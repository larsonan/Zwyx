#include <stdio.h>
#include <string>
#include <stdlib.h>
#include <vector>
using namespace std;
#define NO_ERROR 0
#define INVALID_USE_OF_CHAR 1
#define UNDEFINED_UNIT 2
#define REDEFINED_UNIT 3
#define UNIT_NAME_WITHOUT_LETTER 4
#define UNIT_NAME_BEGINNING_WITH_DIGIT 5
#define UNKNOWN_TOKEN 6
#define UNIT_NAME_TOO_LONG 7
#define INT_CONST_TOO_LONG 8
#define INVALID_USE_OF_INT_CONST 9
#define TOO_MANY_NESTED_UNITS 10
#define TOO_MANY_SUBUNITS 11
#define MISSING_END_BRACE 12
#define UNMATCHED_END_BRACE 13
#define INVALID_USE_OF_OPER 14

#define NO_OPER 0
#define INSERTION 1
#define DEFINE 2
#define SUBUNIT 3
#define BRANCH 4
#define COMPARE 5
#define ADD 6
#define DIVIDE 7
#define COMPARE_NOT 8
#define LOAD 9
#define SUBTRACT 10
#define LESS_THAN 11
#define COND 12
#define WHILE 13
#define MULTIPLY 14
#define MODULUS 15
#define GREATER_THAN 16

#define DEF_NONE 0
#define MAIN 1
#define PTR 2
#define INT 3
#define METHOD_PTR 4
#define SYSRUN 5
#define STRUCT 6
#define INT_CONST 7
#define PAREN 8
#define METHOD 9

#define NUM_BASIC_UNITS 10
#define STRUCT_UNINITIALIZED -2
#define BASE_UNLOADED -1
#define WORD_SIZE 8
#define UNIT_NAME_MAX_LEN 20
#define MAX_SUBUNITS 100
#define MAX_UNIT_CHAIN_LEN 100
#define MAX_ERRORS 100
#define MAX_METHOD_UNITS 100

#define REG_DEFAULT "rsp"
#define REG_TEMP "rax"
#define REG_BASE "rbx"
#define REG_PTR "rcx"
string error_messages[] = 
{
	"", /* No Error */
	"Invalid use of character",
	"Undefined unit",
	"Redefinition of unit",
	"Unit name must contain at least one alphabetic character",
	"Unit name cannot begin with digit",
	"Unknown token",
	"Unit name too long",
	"Integer constant too long",
	"Invalid use of integer constant",
	"Too many nested units",
	"Too many subunits",
	"Missing end brace",
	"Unmatched end brace",
	"Invalid use of operator"
};
struct instrx_struct
{
	struct unit_struct *unit;
	int oper;
	int is_ptr;
	int unit_line;
	struct unit_struct *ptr_source;
	struct instrx_struct *insertion_source;
};

struct method_struct
{
	int f_num;
	int mem_base;
	int num_instrx;
	
	struct instrx_struct **instrxs;
};


struct error_struct
{
	int type;
	int line;
	string section;
	
};


struct unit_struct
{
	string name;
	int type;
	int mem_offset;
	int mem_used;
	int mem_base;
	struct unit_struct *base;
	vector<struct unit_struct*> subunits;
	int num_subunits;
	int f_num;
	struct unit_struct *method;
	struct unit_struct *parent;
	struct instrx_struct **instrx_list;
	int num_instrx;
};

string basic_unit_names[] = {"none", "", "", "int", "method", "sysrun", "", "", "", "do" };
char opers[] = {'\0', ':', '~', '.', '?', '=', '+', '/', ',', '!', '-', '<', '\0', '#', '*', '%', '>'};

struct error_struct errors[MAX_ERRORS];
int num_errors;

struct unit_struct *parent_ptr;

struct unit_struct *subunit_stack[MAX_SUBUNITS];

int subunit_stack_idx;

struct unit_struct basic_unit_data[NUM_BASIC_UNITS];
vector<struct unit_struct*> basic_units;
struct instrx_struct *instrxs[MAX_UNIT_CHAIN_LEN];
int instrx_idx;

vector<struct unit_struct*> funcs;
string compiled_instrxs;

int line_num;

struct instrx_struct new_instrx;
FILE* err_out;
FILE* xcfile;
int num_b = 0;

int num_f = 0;
int temp_reg_mem;

void dbg_out_str(string msg)
{
	FILE *test_f = fopen("output.txt", "a");
	(void)fprintf(test_f, msg.c_str());
	(void)fprintf(test_f, "\n");
	fclose(test_f);
}

void dbg_out(int msg_int)
{
	FILE *test_f = fopen("output.txt", "a");
	(void)fprintf(test_f, "%d", msg_int);
	(void)fprintf(test_f, "\n");
	fclose(test_f);
}

void set_error(int type, int line, string section)
{
	errors[num_errors].type = type;
	errors[num_errors].line = line;
	errors[num_errors].section = section;
	
	if (num_errors < MAX_ERRORS - 1)
	{
		num_errors++;
	}
}

void print_errors(void)
{
	for (int i = 0; i < num_errors; i++)
	{
		(void)fprintf(stdout, "Line %d - \"", errors[i].line);
		(void)fprintf(stdout, "%s", errors[i].section.c_str());
		if ((UNIT_NAME_TOO_LONG == errors[i].type) || (INT_CONST_TOO_LONG == errors[i].type))
		{
			(void)fprintf(stdout, "...");
		}
		(void)fprintf(stdout, "\": %s\n", error_messages[errors[i].type].c_str());
	}
}

vector<struct unit_struct*> instantiate_subunits(struct unit_struct *superunit, struct unit_struct *parent);
void write_instrxs(struct instrx_struct **instrx, int num_instrx);



void setup_basic_units(void)
{
	for (int i = 0; i < NUM_BASIC_UNITS; i++)
	{
		basic_units.push_back(&basic_unit_data[i]);
		basic_units[i]->num_subunits = 0;
		basic_units[i]->type = i;
		basic_units[i]->mem_base = false;
		basic_units[i]->name = basic_unit_names[i];
	}
	basic_units[PTR]->mem_used = WORD_SIZE;
	basic_units[INT]->mem_used = WORD_SIZE;
	basic_units[SYSRUN]->method = basic_units[METHOD];
}
void init(void)
{
	instrx_idx = 0;
	num_errors = 0;
	parent_ptr = NULL;
	basic_unit_data[METHOD_PTR].mem_used = WORD_SIZE;
	subunit_stack_idx = 0;
	setup_basic_units();
}
void write_unit(struct unit_struct *unit)
{
	if (INT_CONST == unit->type)
	{
		(void)fprintf(xcfile, "%s", unit->name.c_str());
	}
	else
	{
		if (METHOD == unit->mem_base)
		{
			(void)fprintf(xcfile, "[%s-%d]", REG_DEFAULT, unit->mem_offset);
		}
		else if (PTR == unit->mem_base)
		{
			(void)fprintf(xcfile, "[%s+%d]", REG_PTR, unit->mem_offset);
		}
		else
		{
			(void)fprintf(xcfile, "[%s+%d]", REG_BASE, unit->mem_offset);
		}
	}
}
void write_compare(struct instrx_struct *left_instrx, struct instrx_struct *right_instrx)
{
	(void)fprintf(xcfile, "cmp\t");
	write_unit(left_instrx->unit);
	(void)fprintf(xcfile, ",\t");
	write_unit(right_instrx->unit);
	(void)fprintf(xcfile, "\n");
}
void write_do(struct unit_struct *unit)
{
	if (METHOD_PTR == unit->type)
	{
		(void)fprintf(xcfile, "mov\t%s,\t", REG_TEMP);
		write_unit(unit);
		(void)fprintf(xcfile, "\n");
	}
	if (STRUCT == unit->base->type)
	{
		(void)fprintf(xcfile, "lea\t");
	}
	else
	{
		(void)fprintf(xcfile, "mov\t");
	}
	(void)fprintf(xcfile, "%s,\t", REG_BASE);
	write_unit(unit->base);
	(void)fprintf(xcfile, "\nsub\t%s,\t%d\n", REG_DEFAULT, unit->mem_used - WORD_SIZE);
	
	if (METHOD_PTR == unit->type)
	{
		
		(void)fprintf(xcfile, "call\t%s\n", REG_TEMP);
	}
	else
	{
		(void)fprintf(xcfile, "call\tf%d\n", unit->f_num);
	}
	
	(void)fprintf(xcfile, "add\t%s,\t%d\n", REG_DEFAULT, unit->mem_used - WORD_SIZE);
	(void)fprintf(xcfile, "mov\t%s,\t[%s]\n", REG_BASE, REG_DEFAULT);
}

void write_insertion_dst(struct unit_struct *unit)
{
	if ((STRUCT == unit->type) && (unit->base != NULL) && (unit->base->type != METHOD))
	{
		if (STRUCT == unit->mem_base)
		{
			(void)fprintf(xcfile, "[%s+%d]", REG_BASE, unit->mem_offset + WORD_SIZE);
		}
		else
		{
			(void)fprintf(xcfile, "[%s-%d]", REG_DEFAULT, unit->mem_offset - WORD_SIZE);
		}
	}
	else
	{
		
		write_unit(unit);
	}
}

void load_base(struct unit_struct *unit)
{
	if (STRUCT == unit->base->type)
	{
		(void)fprintf(xcfile, "lea\t%s,\t", REG_TEMP);
		
	}
	else
	{
		(void)fprintf(xcfile, "mov\t%s,\t", REG_TEMP);
	}
	write_unit(unit->base);
	(void)fprintf(xcfile, "\nmov\t[%s-%d],\t%s\n", REG_DEFAULT, unit->mem_offset, REG_TEMP);
}
void load_pointer_base(struct unit_struct *base)
{
	(void)fprintf(xcfile, "mov\t%s,\t", REG_PTR);
	write_unit(base);
	(void)fprintf(xcfile, "\n");
}

void write_insertion(struct instrx_struct *instrx)
{
	(void)fprintf(xcfile, "mov\t");
	if (INT_CONST == instrx->insertion_source->unit->type)
	{
		(void)fprintf(xcfile, "qword\t");
	}
	write_insertion_dst(instrx->unit);
	(void)fprintf(xcfile, ",\t");
	if (INT_CONST == instrx->insertion_source->unit->type)
	{
		(void)fprintf(xcfile, "%s", instrx->insertion_source->unit->name.c_str());
	}
	else
	{
		(void)fprintf(xcfile, "%s", REG_TEMP);
	}
	(void)fprintf(xcfile, "\n");
}

int write_control_start(struct instrx_struct *instrx)
{
	int b_num = num_b;
	if (COND == instrx->oper)
	{
		num_b++;
		(void)fprintf(xcfile, "b%d:\n", b_num);
	}
	if ((BRANCH == instrx->oper) || (WHILE == instrx->oper))
	{
		num_b++;
		(void)fprintf(xcfile, "cmp\t%s,\t0\nje\tb%d\n", REG_TEMP, b_num);
	}
	return b_num;
}
void write_control_end(struct instrx_struct *instrx, int b_num)
{
	if (WHILE == instrx->oper)
	{
		(void)fprintf(xcfile, "jmp\tb%d\n", b_num - 1);
	}
	if ((BRANCH == instrx->oper) || (WHILE == instrx->oper))
	{
		(void)fprintf(xcfile, "b%d:\n", b_num);
		instrx->oper = NO_OPER;
	}
}
void write_load_ptr(struct instrx_struct *instrx)
{
	
	if (METHOD == instrx->unit->type)
	{
		(void)fprintf(xcfile, "lea\t%s,\t", REG_TEMP);
		(void)fprintf(xcfile, "[rel+f%d]\n", instrx->unit->f_num);
	}
	else
	{
		(void)fprintf(xcfile, "lea\t%s,\t", REG_TEMP);
		write_unit(instrx->unit);
		(void)fprintf(xcfile, "\n");
	}
}

void store_temp(int mem_offset)
{
	(void)fprintf(xcfile, "mov\t[%s-%d],\t%s\n", REG_DEFAULT, mem_offset, REG_TEMP);
}
void get_stored_temp(int mem_offset)
{
	(void)fprintf(xcfile, "mov\t%s,\t[%s-%d]\n", REG_TEMP, REG_DEFAULT, mem_offset);
}
void load_base_to_reg(int mem_offset)
{
	(void)fprintf(xcfile, "lea\t%s,\t[%s-%d]\n", REG_BASE, REG_DEFAULT, mem_offset);
}

void restore_base_to_reg()
{
	(void)fprintf(xcfile, "mov\t%s,\t[%s]\n", REG_BASE, REG_DEFAULT);
	
}
void write_insertion_src(struct instrx_struct *instrx)
{
	(void)fprintf(xcfile, "mov\t%s,\t", REG_TEMP);
	
	
	write_unit(instrx->unit);
	(void)fprintf(xcfile, "\n");
}

void write_math_instrx(struct instrx_struct *instrx)
{
	int get_unit_from_reg = 0;
	if ((MULTIPLY == instrx->oper) || (DIVIDE == instrx->oper) || (MODULUS == instrx->oper))
	{
		(void)fprintf(xcfile, "xor\trdx,\trdx\n");
		if (INT_CONST == instrx->unit->type)
		{
			get_unit_from_reg = 1;
			(void)fprintf(xcfile, "mov\tqword\trcx,\t%s\n", instrx->unit->name.c_str());
		}
	}
	
	switch (instrx->oper)
	{
	case MODULUS:
	case DIVIDE:
		(void)fprintf(xcfile, "div\t");
		break;
	case ADD:
	
		(void)fprintf(xcfile, "add\t%s,\t", REG_TEMP);
		break;
	case SUBTRACT:
		
		(void)fprintf(xcfile, "sub\t%s,\t", REG_TEMP);
		break;
	case MULTIPLY:
		
		(void)fprintf(xcfile, "mul\tqword\t");
		break;
	default:
		break;
	}
	
	if (get_unit_from_reg)
	{
		(void)fprintf(xcfile, "rcx\n");
	}
	else
	{
		write_unit(instrx->unit);
		(void)fprintf(xcfile, "\n");
	}
	
	if (MODULUS == instrx->oper)
	{
		(void)fprintf(xcfile, "mov\t%s,\trdx\n", REG_TEMP);
	}
}
void write_do_instrx(struct instrx_struct *instrx)
{
	if ((METHOD == instrx->unit->type) || ((METHOD_PTR == instrx->unit->type)
											&& (NULL == instrx->insertion_source) && (instrx->oper != INSERTION)))
	{
		if ((METHOD == instrx->unit->type) && (0 == instrx->unit->name.length()))
		{
			write_instrxs(instrx->unit->instrx_list, instrx->unit->num_instrx);
		}
		else
		{
			write_do(instrx->unit);
		}
		
	}
	else if ((STRUCT == instrx->unit->type) && (instrx->unit->method != NULL) && (instrx->unit->method->mem_base))
	{
		write_do(instrx->unit->method);
	}
}

void handle_instrx_default(struct instrx_struct *instrx)
{
	if (instrx->is_ptr)
	{
		write_load_ptr(instrx);
	}
	else if (((STRUCT == instrx->unit->type) && (instrx->unit->method != NULL)) 
		|| (METHOD == instrx->unit->type) || (METHOD_PTR == instrx->unit->type))
	{
		write_do_instrx(instrx);
	}
	else if ((instrx->unit->type != METHOD) && ((instrx->oper != NO_OPER) || (NULL == instrx->insertion_source))
				&& ((instrx->oper != INSERTION) || (instrx->unit->type != INT_CONST)))
	{
		write_insertion_src(instrx);
	}
}
int get_temp_offset(struct unit_struct *unit)
{
	int result;
	if (STRUCT == unit->type)
	{
		result = unit->mem_offset - unit->mem_used;
		
	}
	else if (METHOD == unit->type)
	{
		result = unit->mem_offset - WORD_SIZE;
	}
	else
	{
		result = unit->mem_used - WORD_SIZE;
	}
	
	return result;
}
void handle_math_oper(struct instrx_struct *instrx)
{
	
	if ((METHOD == instrx->unit->type) || (STRUCT == instrx->unit->type) || (METHOD_PTR == instrx->unit->type))
	{
		write_do_instrx(instrx);
		int temp_offset = get_temp_offset(instrx->unit);
		
		store_temp(temp_offset + WORD_SIZE);
		get_stored_temp(temp_offset);
	}
	write_math_instrx(instrx);
}
bool is_control_instrx(struct instrx_struct *instrx)
{
	return ((WHILE == instrx->oper) || (COND == instrx->oper) || (BRANCH == instrx->oper));
}


bool is_default_instrx(struct instrx_struct *instrx)
{
	return ((INSERTION == instrx->oper) || (is_control_instrx(instrx))
			|| (SUBUNIT == instrx->oper) || (NO_OPER == instrx->oper));
}

void write_operation(struct instrx_struct *instrx)
{
	if (is_default_instrx(instrx))
	{
		handle_instrx_default(instrx);
	}
	else if (instrx->oper != DEFINE)
	{
		handle_math_oper(instrx);
	}
}
void initialize_unit(struct unit_struct *unit)
{
	if ((STRUCT == unit->type) || ((METHOD == unit->type) && (unit->f_num <= 0)))
	{
		if ((unit->base != NULL) && ((unit->base->mem_base) || (PTR == unit->base->type)))
		{
			if ((BASE_UNLOADED == unit->f_num) || (STRUCT_UNINITIALIZED == unit->f_num))
			{
				load_base(unit);
			}
			initialize_unit(unit->base);
		}
		if (STRUCT_UNINITIALIZED == unit->f_num)
		{
			load_base_to_reg(unit->mem_offset);
			write_instrxs(unit->instrx_list, unit->num_instrx);
			
			restore_base_to_reg();
		}
		unit->f_num = 0;
	}
}
void write_line(struct instrx_struct *instrx)
{
	int b_num;
	if (is_control_instrx(instrx))
	{
		b_num = write_control_start(instrx);
	}
	if (!is_default_instrx(instrx) && (instrx->oper != DEFINE)
				&& ((METHOD == instrx->unit->type) || (STRUCT == instrx->unit->type) || (METHOD_PTR == instrx->unit->type)))
	{
		store_temp(get_temp_offset(instrx->unit));
	}
	if (instrx->insertion_source != NULL)
	{
		write_line(instrx->insertion_source);
	}
	if (PTR == instrx->unit->mem_base)
	{
		load_pointer_base(instrx->unit->base);
		
	}
	if ((instrx->insertion_source != NULL) && (instrx->insertion_source->oper != SUBUNIT))
	{
		write_insertion(instrx);
		
	}
	initialize_unit(instrx->unit);
	
	write_operation(instrx);
	
	
	if (is_control_instrx(instrx))
	{
		write_control_end(instrx, b_num);
	}
}

void write_instrxs(struct instrx_struct **instrxs, int num_instrx)
{
	
	for (int i = 0; i < num_instrx; i++)
	{
		if ((i < num_instrx - 1) && (COMPARE == instrxs[i+1]->oper))
		{
			write_compare(instrxs[i], instrxs[i+1]);
		}
		if ((instrxs[i]->oper != INSERTION) && (instrxs[i]->oper != SUBUNIT) && (instrxs[i]->unit->type != DEF_NONE))
		{
			write_line(instrxs[i]);
		}
	}
}
void write_f(void)
{
	for (int i = 0; i < funcs.size(); i++)
	{
		(void)fprintf(xcfile, "f%d:\npush\t%s\n", funcs[i]->f_num, REG_BASE);
		write_instrxs(funcs[i]->instrx_list, funcs[i]->num_instrx);
		(void)fprintf(xcfile, "pop\t%s\nret\n", REG_BASE);
	}
}

void write_xc(void)
{
	xcfile = fopen("xc.asm", "w");
	(void)fprintf(xcfile, "global\t_main\n_main:\n");
	write_instrxs(parent_ptr->instrx_list, parent_ptr->num_instrx);
	(void)fprintf(xcfile, "ret\n");
	write_f();
	
	(void)fprintf(xcfile, compiled_instrxs.c_str());
	
	
	(void)fprintf(xcfile, "SECTION .bss\nstaticdata:\tresb\t%d\n", 8);
	fclose(xcfile);
}









struct unit_struct *find_unit_from_list(vector<struct unit_struct*> unit_list, string name)
{
	struct unit_struct *unit_match = NULL;
	for (int i = 0; i < unit_list.size(); i++)
	{
		if (unit_list[i]->name == name)
		{
			unit_match = unit_list[i];
			break;
		}
	}
	return unit_match;
}
void find_unit_in_superunit(string name, struct unit_struct *superunit)
{
	new_instrx.unit = find_unit_from_list(superunit->subunits, name);
	if ((new_instrx.unit != NULL) && !new_instrx.unit->mem_base && (new_instrx.unit->base != NULL))
	{
		new_instrx.ptr_source = superunit;
	}
}
void handle_inheritance(struct unit_struct *unit)
{
	parent_ptr->num_subunits = unit->subunits.size();
	parent_ptr->mem_used = unit->mem_used;
	if (parent_ptr->num_subunits > 0)
	{
		parent_ptr->subunits = unit->subunits;
	}
	if (unit->method != NULL)
	{
		parent_ptr->method = unit->method;
	}
}

void handle_new_method(struct unit_struct *unit)
{
	
	funcs.push_back(unit);
	unit->f_num = num_f;
	num_f++;
}
void handle_define_statement(struct unit_struct *defined_unit, struct unit_struct *definition_unit)
{
	definition_unit->name = defined_unit->name;
	if ((STRUCT == definition_unit->mem_base) || (METHOD == definition_unit->mem_base))
	{
		parent_ptr->mem_used += definition_unit->mem_used;
	}
	parent_ptr->subunits.push_back(definition_unit);
	parent_ptr->num_subunits++;
}
struct unit_struct* instantiate_unit(struct unit_struct *unit, struct unit_struct *base, struct unit_struct *parent)
{
	struct unit_struct *instance = new unit_struct;
	*instance = *unit;
	instance->mem_base = parent->type;
	if (PTR == parent->type)
	{
		instance->base = parent;
	}
	else if ((STRUCT == parent->type) && (METHOD == parent->mem_base))
	{
		instance->mem_base = METHOD;
		instance->mem_offset = parent->mem_offset - instance->mem_offset;
	}
	else if ((STRUCT == instance->type) && (METHOD == parent->type))
	{
		if ((base != NULL) && (METHOD == base->mem_base) && (base->mem_offset >= parent->mem_used))
		{
			instance->mem_offset = base->mem_offset + instance->mem_used;
		}
		else
		{
			instance->mem_offset = temp_reg_mem + parent->mem_used + instance->mem_used - WORD_SIZE;
		}
		if (0 == instance->f_num)
		{
			instance->f_num = BASE_UNLOADED;
		}
		parent = instance;
	}
	else
	{
		instance->mem_offset += parent->mem_used + temp_reg_mem;
	}
	if (base != NULL)
	{
		instance->base = base;
	}
	if (STRUCT == instance->type)
	{
		instance->subunits = instantiate_subunits(instance, parent);
	}
	else if (PTR == instance->type)
	{
		instance->subunits = instantiate_subunits(instance, instance);
	}
	return instance;
}
vector<struct unit_struct*> instantiate_subunits(struct unit_struct *superunit, struct unit_struct *parent)
{
	vector<struct unit_struct*> units = superunit->subunits;
	
	for (int i = 0; i < superunit->num_subunits; i++)
	{
		if (STRUCT == superunit->subunits[i]->mem_base)
		{
			units[i] = instantiate_unit(superunit->subunits[i], NULL, parent);
		}
	}
	return units;
}
struct unit_struct *instantiate_method(struct unit_struct *unit, struct unit_struct *temp_instrx_parent)
{
	struct unit_struct *old_unit = unit;
	unit = new unit_struct;
	*unit = *old_unit;
	if (NULL == temp_instrx_parent)
	{
		unit->mem_used = parent_ptr->mem_used;
		if ((METHOD == unit->type) && (!parent_ptr->base->mem_base))
		{
			unit->base = parent_ptr->base->base;
		}
		else
		{
			unit->base = parent_ptr->base;
		}
	}
	else
	{
		unit->mem_used = temp_instrx_parent->mem_offset + WORD_SIZE;
		unit->base = temp_instrx_parent;
		unit->mem_base = METHOD;
	}
	return unit;
}
struct unit_struct* instantiate_as_ptr(struct unit_struct *unit)
{
	struct unit_struct *new_ptr = instantiate_unit(basic_units[PTR], NULL, parent_ptr);
	new_ptr->subunits = instantiate_subunits(unit, new_ptr);
	new_ptr->num_subunits = unit->num_subunits;
	return new_ptr;
}

void handle_instantiation(struct instrx_struct *instrx)
{
	if (((METHOD_PTR == instrx->unit->type) && instrx->unit->mem_base)
		|| ((METHOD == instrx->unit->type) && !instrx->unit->mem_base))
	{
		instrx->unit = instantiate_method(instrx->unit, NULL);
	}
	else if (!instrx->unit->mem_base)
	{
		if (instrx->is_ptr)
		{
			instrx->unit = instantiate_as_ptr(instrx->unit);
		}
		else
		{
			instrx->unit = instantiate_unit(instrx->unit, instrx->ptr_source, parent_ptr);
			
			if ((instrx->unit->method != NULL) && (instrx->oper != DEFINE) && (new_instrx.oper != SUBUNIT))
			{
				instrx->unit->method = instantiate_method(instrx->unit->method, instrx->unit);
			}
		}
	}
}
void id_unit(string name)
{
	struct unit_struct *superunit = parent_ptr;
	while ((NULL == new_instrx.unit) && (superunit != NULL) && (METHOD == superunit->mem_base))
	{
		find_unit_in_superunit(name, superunit);
		superunit = superunit->parent;
	}
	while ((NULL == new_instrx.unit) && (superunit != NULL))
	{
		find_unit_in_superunit(name, superunit);
		superunit = superunit->base;
	}
	superunit = parent_ptr;
	
	while ((NULL == new_instrx.unit) && (superunit != NULL) && (METHOD == superunit->mem_base))
	{
		find_unit_in_superunit(name, superunit->base);
		superunit = superunit->parent;
	}
}


void handle_last_instrx()
{
	
	if ((parent_ptr->num_instrx > 0) && (new_instrx.oper != DEFINE))
	{
		struct instrx_struct *instrx = instrxs[instrx_idx - 1];
		if ((DEF_NONE == instrx->unit->type) && (0 == instrx->unit->name.length()))
		{
			set_error(UNDEFINED_UNIT, instrx->unit_line, instrx->unit->name);
		}
		else if ((DEFINE == instrx->oper) && (1 == parent_ptr->num_instrx))
		{
			handle_inheritance(instrx->unit);
		}
		else if ((instrx->unit->type != DEF_NONE) && (instrx->unit->type != INT_CONST))
		{
			handle_instantiation(instrx);
			if (DEFINE == instrx->oper)
			{
				handle_define_statement(instrxs[instrx_idx - 2]->unit, instrx->unit);
			}
		}
	}
}
struct unit_struct *get_correct_method_type()
{
	if (DEFINE == new_instrx.oper)
	{
		return basic_units[METHOD_PTR];
	}
	else if (METHOD == parent_ptr->type)
	{
		if (!parent_ptr->base->mem_base)
		{
			return parent_ptr->base->base->method;
		}
		else
		{
			return parent_ptr->base->method;
		}
	}
	return basic_units[METHOD];
}
void handle_new_instrx()
{
	if ((SUBUNIT == new_instrx.oper) && ((new_instrx.unit->type != METHOD) || (instrxs[instrx_idx - 1]->oper != DEFINE)))
	{
		handle_instantiation(instrxs[instrx_idx - 1]);
		struct unit_struct *unit = instrxs[instrx_idx - 1]->unit;
		instrxs[instrx_idx - 1]->ptr_source = unit;
		instrxs[instrx_idx - 1]->unit = new_instrx.unit;
	}
	else
	{
		instrxs[instrx_idx] = new instrx_struct;
		*instrxs[instrx_idx] = new_instrx;
		if ((INSERTION == new_instrx.oper) || (SUBUNIT == new_instrx.oper))
		{
			instrxs[instrx_idx - 1]->insertion_source = instrxs[instrx_idx];
		}
		else if (WHILE == new_instrx.oper)
		{
			instrxs[instrx_idx - 1]->oper = COND;
		}
		if ((INSERTION == new_instrx.oper) && (STRUCT == parent_ptr->type))
		{
			parent_ptr->f_num = STRUCT_UNINITIALIZED;
		}
		if (!is_default_instrx(&new_instrx) && new_instrx.oper != DEFINE)
		{
			temp_reg_mem = WORD_SIZE;
		}
		else
		{
			temp_reg_mem = 0;
		}
		instrx_idx++;
		parent_ptr->num_instrx++;
	}
	new_instrx.oper = NO_OPER;
	new_instrx.is_ptr = 0;
	
	new_instrx.ptr_source = NULL;
	instrxs[instrx_idx - 1]->unit_line = line_num;
}
void handle_unit(struct unit_struct *unit)
{
	new_instrx.unit = unit;
	handle_new_instrx();
}
void handle_end_superunit()
{
	if (NULL == parent_ptr)
	{
		set_error(UNMATCHED_END_BRACE, line_num, "}");
		return;
	}
	handle_last_instrx();
	parent_ptr->instrx_list = new instrx_struct*[parent_ptr->num_instrx];
	for (int i = 0; i < parent_ptr->num_instrx; i++)
	{
		parent_ptr->instrx_list[i] = instrxs[instrx_idx - parent_ptr->num_instrx + i];
	}
	instrx_idx = instrx_idx - parent_ptr->num_instrx;
	if (parent_ptr->parent != NULL)
	{
		parent_ptr = parent_ptr->parent;
	}
}
void handle_new_superunit()
{
	struct unit_struct *unit = new unit_struct;
	*unit = *basic_units[STRUCT];
	
	if (DEFINE == new_instrx.oper)
	{
		unit->base = parent_ptr;
		if (STRUCT == parent_ptr->type)
		{
			unit->mem_used += WORD_SIZE;
			if (METHOD == instrxs[instrx_idx - 1]->unit->type)
			{
				unit->type = METHOD;
				handle_new_method(unit);
				parent_ptr->method = unit;
			}
			else
			{
				struct unit_struct *cloned_base = new unit_struct;
				*cloned_base = *unit->base;
				unit->base = cloned_base;
				unit->base->type = PTR;
				unit->base->subunits = instantiate_subunits(unit->base, unit->base);
			}
		}
		handle_define_statement(instrxs[instrx_idx - 1]->unit, unit);
		instrxs[instrx_idx - 1]->unit = basic_units[DEF_NONE];
		new_instrx.oper = NO_OPER;
	}
	else
	{
		unit->type = METHOD;
		unit->mem_base = METHOD;
		unit->mem_used = parent_ptr->mem_used;
		handle_last_instrx();
		if (SUBUNIT == new_instrx.oper)
		{
			unit->base = instrxs[instrx_idx - 1]->unit;
			unit->mem_used += instrxs[instrx_idx - 1]->unit->mem_used;
		}
		else if (new_instrx.oper != BRANCH)
		{
			
			if (new_instrx.is_ptr)
			{
				unit->base = new unit_struct;

				*unit->base = *basic_units[INT];
				unit->base->mem_base = METHOD;
				handle_new_method(unit);
				unit->mem_used = WORD_SIZE;
			}
			else
			{
				unit->base = parent_ptr->base;
			}
		}
		handle_unit(unit);
		unit->mem_used += temp_reg_mem;
		unit->mem_offset = unit->mem_used;
	}
	
	unit->parent = parent_ptr;
	parent_ptr = unit;
}
void handle_char(int c)
{
	for (int i = 0; i < 17; i++)
	{
		if (c == opers[i])
		{
			new_instrx.oper = i;
			break;
		}
	}
	if (((';' == c) || ('$' == c)) && (new_instrx.oper != SUBUNIT))
	{
		handle_last_instrx();
	}
	switch(c)
	{
	
	case ';':
		handle_unit(get_correct_method_type());
		break;
	case '{':
		handle_new_superunit();
		break;
	case '}':
		handle_end_superunit();
		break;
		
	case '\n':
		line_num++;
		break;
	case '$':
		handle_unit(parent_ptr->base);
		break;
	case '@':
		new_instrx.is_ptr = 1;
		break;
		
	default:
		
		break;
	}
}
void start_base_unit()
{
	parent_ptr = new unit_struct;
	*parent_ptr = *basic_units[MAIN];
	parent_ptr->parent = NULL;
	parent_ptr->type = METHOD;
	parent_ptr->mem_used += WORD_SIZE;
	parent_ptr->base = NULL;
}
void end_base_unit()
{
	if (parent_ptr->parent != NULL)
	{
		set_error(MISSING_END_BRACE, line_num, "{");
	}
	if (NULL == parent_ptr->parent)
	{
		handle_end_superunit();
	}
}





void handle_unit_name(string name)
{
	
	new_instrx.unit = NULL;
	if (new_instrx.oper != SUBUNIT)
	{
		handle_last_instrx();
	}
	if ((name[0] >= '0') && (name[0] <= '9'))
	{
		new_instrx.unit = new unit_struct;
		new_instrx.unit->type = INT_CONST;
		new_instrx.unit->name = name;
	}
	else
	{
		new_instrx.unit = find_unit_from_list(basic_units, name);
		if (NULL == new_instrx.unit)
		{
			if (new_instrx.oper != SUBUNIT)
			{
				id_unit(name);
			}
			else
			{
				find_unit_in_superunit(name, instrxs[instrx_idx - 1]->unit);
			}
		}
		if (NULL == new_instrx.unit)
		{
			new_instrx.unit = new unit_struct;
			new_instrx.unit->type = DEF_NONE;
			new_instrx.unit->name = name;
		}
	}
	handle_new_instrx();
}
void parse_file(string file_name)
{
	FILE* zyfile = fopen(file_name.c_str(), "r");
	line_num = 1;
	string unit_name_buffer;
	int in_compiled_instrxs = 0;
	int unit_name_buffer_idx = 0;
	
	int c = fgetc(zyfile);
	while (c != EOF)
	{
		if (in_compiled_instrxs)
		{
			compiled_instrxs.push_back(c);
		}
		else
		{
			if ((c >= 'A' && c <= 'Z') || (c >= 'a' && c <= 'z') || (c >= '0' && c <= '9') || (c == '_'))
			{
				/* We're in the middle of a unit name - store char in buffer */
				if (unit_name_buffer_idx < UNIT_NAME_MAX_LEN)
				{
					unit_name_buffer.push_back(c);
				}
				unit_name_buffer_idx++;
			}
			else
			{
				if (unit_name_buffer_idx > 0)
				{
					/* We've reached the end of a unit name */
					if ("0_START_INSTRXS" == unit_name_buffer)
					{
						in_compiled_instrxs = 1;
						handle_last_instrx();
						funcs.clear();
					}
					else
					{
						handle_unit_name(unit_name_buffer);
					}
					unit_name_buffer.clear();
					/* Reset buffer_idx */
					unit_name_buffer_idx = 0;
				}
				handle_char(c);
			}
		}
		c = fgetc(zyfile);
	}
	if (unit_name_buffer_idx > 0)
	{
		/* Final unit name still unhandled */
		
		handle_unit_name(unit_name_buffer);
	}
	
	fclose(zyfile);
}

int main(int argc, char** argv)
{
	
	init();
	start_base_unit();
	parse_file("sysapi_unix.txt");
	parse_file(argv[1]);
	end_base_unit();
	if (num_errors > 0)
	{
		
		print_errors();
	}
	else
	{
		write_xc();
	}
	
	return 0;
}
