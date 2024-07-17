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
#define ELSE 12
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
	int oper_line;
	int base_level;
	int is_base;
	struct instrx_struct *ptr_source;
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
	int f_num;
	struct unit_struct *method;
	struct unit_struct *parent;
	struct unit_struct *typing;
	vector<struct instrx_struct*> instrx_list;
	struct instrx_struct *base_instrx;
};

string basic_unit_names[] = {"none", "", "", "int", "method", "sysrun", "", "", "", "do" };
char opers[] = {'\0', ':', '~', '.', '?', '=', '+', '/', ',', '\0', '-', '<', '!', '#', '*', '%', '>'};

struct error_struct errors[MAX_ERRORS];
int num_errors;

struct unit_struct *parent_ptr;

struct unit_struct *subunit_stack[MAX_SUBUNITS];

int subunit_stack_idx;
#define FORMAT "elf64"
struct unit_struct basic_unit_data[NUM_BASIC_UNITS];
vector<struct unit_struct*> basic_units;

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
	(void)fprintf(test_f, "%s", msg.c_str());
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
struct unit_struct* instantiate_unit(struct unit_struct *unit, struct unit_struct *base, struct unit_struct *parent);
void write_instrxs(vector<struct instrx_struct*> instrx);
void write_line_with_control(struct instrx_struct *instrx);

void setup_basic_units(void)
{
	for (int i = 0; i < NUM_BASIC_UNITS; i++)
	{
		basic_units.push_back(&basic_unit_data[i]);
		
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
	
	setup_basic_units();
}
void write_unit(struct instrx_struct *instrx)
{
	if (INT_CONST == instrx->unit->type)
	{
		(void)fprintf(xcfile, "%s", instrx->unit->name.c_str());
	}
	else
	{
		if ((METHOD == instrx->unit->mem_base) || (-1 == instrx->base_level))
		{
			(void)fprintf(xcfile, "[%s-%d]", REG_DEFAULT, instrx->unit->mem_offset);
		}
		else if (2 == instrx->base_level)
		{
			(void)fprintf(xcfile, "[%s+%d]", REG_BASE, instrx->unit->mem_offset);
		}
		else
		{
			(void)fprintf(xcfile, "[%s+%d]", REG_PTR, instrx->unit->mem_offset);
		}
	}
}
void write_do(struct instrx_struct *instrx)
{
        struct unit_struct *unit;
        struct instrx_struct *base_instrx;
        if (STRUCT == instrx->unit->type)
        {
                unit = instrx->unit->method;
                base_instrx = instrx;
        }
        else
        {
                unit = instrx->unit;
                base_instrx = instrx->unit->base_instrx;
        }
	if (METHOD_PTR == unit->type)
	{
		(void)fprintf(xcfile, "mov\t%s,\t", REG_TEMP);
		write_unit(instrx);
		(void)fprintf(xcfile, "\n");
	}
	if ((STRUCT == base_instrx->unit->type) && ((base_instrx->unit->mem_base) || (METHOD_PTR == unit->type)))
	{
		(void)fprintf(xcfile, "lea\t");
	}
	else
	{
		(void)fprintf(xcfile, "mov\t");
	}
	(void)fprintf(xcfile, "%s,\t", REG_BASE);
	write_unit(base_instrx);
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

void write_insertion_dst(struct instrx_struct *instrx)
{
	if ((STRUCT == instrx->unit->type) && (instrx->unit->base != NULL) && (instrx->unit->base->type != METHOD))
	{
		if (STRUCT == instrx->unit->mem_base)
		{
			(void)fprintf(xcfile, "[%s+%d]", REG_BASE, instrx->unit->mem_offset + WORD_SIZE);
		}
		else
		{
			(void)fprintf(xcfile, "[%s-%d]", REG_DEFAULT, instrx->unit->mem_offset - WORD_SIZE);
		}
	}
	else
	{
		
		write_unit(instrx);
	}
}

void write_load_ptr_base(struct instrx_struct *instrx)
{
	(void)fprintf(xcfile, "mov\t%s,\t", REG_PTR);
	write_unit(instrx);
	(void)fprintf(xcfile, "\n");
}

void write_insertion(struct instrx_struct *instrx)
{
	(void)fprintf(xcfile, "mov\t");
	if (INT_CONST == instrx->insertion_source->unit->type)
	{
		(void)fprintf(xcfile, "qword\t");
	}
	write_insertion_dst(instrx);
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

void write_ptr_to_temp(struct instrx_struct *instrx)
{
	
	if (METHOD == instrx->unit->type)
	{
		(void)fprintf(xcfile, "lea\t%s,\t", REG_TEMP);
		(void)fprintf(xcfile, "[rel+f%d]\n", instrx->unit->f_num);
	}
	else
	{
	        if (STRUCT == instrx->unit->type)
	        {
		        (void)fprintf(xcfile, "lea\t%s,\t", REG_TEMP);
		}
	        else
	        {
	                (void)fprintf(xcfile, "mov\t%s,\t", REG_TEMP);
	        }
	        write_unit(instrx);
	        (void)fprintf(xcfile, "\n");
	}
}

void load_base_to_temp()
{
        (void)fprintf(xcfile, "mov\t%s,\t[%s+0]\n", REG_TEMP, REG_BASE);
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
	
	
	write_unit(instrx);
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
	case COMPARE:
	case COMPARE_NOT:
	case GREATER_THAN:
	case LESS_THAN:
	        (void)fprintf(xcfile, "cmp\t%s,\t", REG_TEMP);
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
		write_unit(instrx);
		(void)fprintf(xcfile, "\n");
	}
	
	switch (instrx->oper)
	{
	        case MODULUS:
		        (void)fprintf(xcfile, "mov\t%s,\trdx\n", REG_TEMP);
		        break;
		case COMPARE:
		        (void)fprintf(xcfile, "sete\tal\nmovzx\t%s,\tal\n", REG_TEMP);
		        break;
		case COMPARE_NOT:
		        (void)fprintf(xcfile, "setne\tal\nmovzx\t%s,\tal\n", REG_TEMP);
		        break;
		case GREATER_THAN:
		        (void)fprintf(xcfile, "setg\tal\nmovzx\t%s,\tal\n", REG_TEMP);
		        break;
		case LESS_THAN:
		        (void)fprintf(xcfile, "setl\tal\nmovzx\t%s,\tal\n", REG_TEMP);
		        break;
		default:
		        break;
	}
}
void write_jump_unconditional(int b_num)
{
        (void)fprintf(xcfile, "jmp\tb%d\n", b_num);
}
void write_label_no(int b_num)
{
        (void)fprintf(xcfile, "b%d:\n", b_num);
}
void write_jump_conditional(int b_num)
{
        (void)fprintf(xcfile, "cmp\t%s,\t0\nje\tb%d\n", REG_TEMP, b_num);
}
void decrease_base_level(int base_level)
{
        (void)fprintf(xcfile, "mov\t%s,\t[%s+0]\n", REG_PTR, REG_BASE);
        for (int i = 4; i <= base_level; i++)
        {
                (void)fprintf(xcfile, "mov\t%s,\t[%s]\n", REG_PTR, REG_PTR);
        }
}
void load_pointer_base(struct instrx_struct *instrx)
{
        if (instrx->base_level > 2)
        {
                decrease_base_level(instrx->base_level);
        }
        else if ((instrx->ptr_source != NULL) && (instrx->unit->mem_base != METHOD))
        {
                load_pointer_base(instrx->ptr_source);
        }
        write_load_ptr_base(instrx);
}
void load_base(struct instrx_struct *instrx)
{
        if (instrx->base_level > 2)
        {
                load_base_to_temp();
        }
        else
        {
                if ((instrx->ptr_source->ptr_source != NULL) && (instrx->unit->mem_base != METHOD))
                {
                        load_pointer_base(instrx->ptr_source->ptr_source);
                }
                write_ptr_to_temp(instrx->ptr_source);
	}
	store_temp(instrx->unit->mem_offset);
}
void write_do_instrx(struct instrx_struct *instrx)
{
	if ((METHOD == instrx->unit->type) || ((METHOD_PTR == instrx->unit->type)
											&& (NULL == instrx->insertion_source) && (instrx->oper != INSERTION)))
	{
		if ((METHOD == instrx->unit->type) && (0 == instrx->unit->name.length()))
		{
			write_instrxs(instrx->unit->instrx_list);
		}
		else
		{
			write_do(instrx);
		}
		
	}
	else if ((STRUCT == instrx->unit->type) && (instrx->unit->method != NULL) && (instrx->unit->method->mem_base))
	{
		write_do(instrx);
	}
}

void handle_instrx_default(struct instrx_struct *instrx)
{
	if (instrx->is_ptr)
	{
		write_ptr_to_temp(instrx);
	}
	else if (((STRUCT == instrx->unit->type) && (instrx->unit->method != NULL)) || (METHOD == instrx->unit->type)
		|| ((METHOD_PTR == instrx->unit->type) && (instrx->oper != INSERTION)))
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

bool is_default_instrx(struct instrx_struct *instrx)
{
	return ((INSERTION == instrx->oper) || (NO_OPER == instrx->oper) || (SUBUNIT == instrx->oper)
	      || (WHILE == instrx->oper) || (ELSE == instrx->oper) || (BRANCH == instrx->oper));
}

void initialize_unit(struct instrx_struct *instrx)
{
        struct unit_struct *unit = instrx->unit;
	if ((STRUCT == unit->type) || ((METHOD == unit->type) && (unit->f_num <= 0)))
	{
		if ((unit->base != NULL) && ((PTR == unit->base->type) || (STRUCT == unit->base->type)))
		{
			if ((BASE_UNLOADED == unit->f_num) || (STRUCT_UNINITIALIZED == unit->f_num))
			{
				load_base(instrx);
			}
			if ((unit->base_instrx != NULL) && (unit->base_instrx->unit != NULL))
			{
			        initialize_unit(unit->base_instrx);
			}
			else if ((instrx->ptr_source != NULL) && (instrx->ptr_source->unit != NULL))
			{
			        initialize_unit(instrx->ptr_source);
			}
		}
		if (STRUCT_UNINITIALIZED == unit->f_num)
		{
			load_base_to_reg(unit->mem_offset);
			write_instrxs(unit->instrx_list);
			
			restore_base_to_reg();
		}
		unit->f_num = 0;
	}
}
void write_line(struct instrx_struct *instrx)
{
	if (!is_default_instrx(instrx) && (instrx->oper != DEFINE)
				&& ((METHOD == instrx->unit->type) || (STRUCT == instrx->unit->type) || (METHOD_PTR == instrx->unit->type)))
	{
		store_temp(get_temp_offset(instrx->unit));
	}
	if ((instrx->insertion_source != NULL) 
	  && ((INSERTION == instrx->insertion_source->oper) || (SUBUNIT == instrx->insertion_source->oper)))
	{
		write_line(instrx->insertion_source);
	}
	if ((instrx->base_level > 2) && (instrx->unit->mem_base != METHOD))
	{
	        decrease_base_level(instrx->base_level);
	}
	else if ((instrx->ptr_source != NULL) && instrx->unit->mem_base && (instrx->unit->mem_base != METHOD))
	{
	        load_pointer_base(instrx->ptr_source);
	}
	if ((instrx->insertion_source != NULL) && (INSERTION == instrx->insertion_source->oper))
	{
		write_insertion(instrx);
	}
	
	initialize_unit(instrx);
	
	if (is_default_instrx(instrx))
	{
		handle_instrx_default(instrx);
	}
	else if (instrx->oper != DEFINE)
	{
		handle_math_oper(instrx);
	}
}


void write_line_with_branch(struct instrx_struct* instrx)
{
        write_line(instrx);
        instrx = instrx->insertion_source;
        int b_num = num_b;
        num_b++;
        write_jump_conditional(b_num);
        write_line(instrx);
        if ((instrx->insertion_source != NULL) && (ELSE == instrx->insertion_source->oper))
        {
                int b_num2 = num_b;
                num_b++;
                write_jump_unconditional(b_num2);
                write_label_no(b_num);
                write_line_with_control(instrx->insertion_source);
                write_label_no(b_num2);
        }
        else
        {
                write_label_no(b_num);
        }
}

void write_line_with_while(struct instrx_struct* instrx)
{
        int b_num = num_b;
        num_b++;
        write_label_no(b_num);
        write_line(instrx);
        int b_num2 = num_b;
        num_b++;
        write_jump_conditional(b_num2);
        write_line(instrx->insertion_source);
        write_jump_unconditional(b_num);
        write_label_no(b_num2);
}

void write_line_with_control(struct instrx_struct* instrx)
{
        if ((instrx->insertion_source != NULL) && (BRANCH == instrx->insertion_source->oper))
        {
                write_line_with_branch(instrx);
        }
        else if ((instrx->insertion_source != NULL) && (WHILE == instrx->insertion_source->oper))
        {
                write_line_with_while(instrx);
        }
        else
        {
                write_line(instrx);
        }
}

void write_instrxs(vector<struct instrx_struct*> instrxs)
{
        
	for (int i = 0; i < instrxs.size(); i++)
	{
		if ((instrxs[i]->oper != INSERTION) && (instrxs[i]->oper != SUBUNIT) && (instrxs[i]->unit->type != DEF_NONE) && (instrxs[i]->oper != WHILE) && (instrxs[i]->oper != ELSE) && (instrxs[i]->oper != BRANCH))
		{
			write_line_with_control(instrxs[i]);
		}
	}
}
void write_f(void)
{
	for (int i = 0; i < funcs.size(); i++)
	{
		(void)fprintf(xcfile, "f%d:\npush\t%s\n", funcs[i]->f_num, REG_BASE);
		write_instrxs(funcs[i]->instrx_list);
		(void)fprintf(xcfile, "pop\t%s\nret\n", REG_BASE);
	}
}

void write_xc(string format)
{
	xcfile = fopen("xc.asm", "w");
	
	if (format == "macho64")
	{
	        (void)fprintf(xcfile, "global\t_main\n_main:\n");
	}
	else
	{
	        (void)fprintf(xcfile, "global\t_start\n_start:\n");
	}
	
	write_instrxs(parent_ptr->instrx_list);
	
	if (format == "macho64")
	{
	        (void)fprintf(xcfile, "ret\n");
	}
	else
	{
	        (void)fprintf(xcfile, "mov\trax,\t60\nmov\trdi,\t0\nsyscall\n");
	}
	
	write_f();
	
	(void)fprintf(xcfile, "%s", compiled_instrxs.c_str());
	
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
        if ((NULL == new_instrx.unit) && (superunit->typing != NULL))
        {
                new_instrx.unit = find_unit_from_list(superunit->typing->subunits, name);
        }
}
void handle_inheritance(struct unit_struct *unit)
{
	parent_ptr->mem_used = unit->mem_used;
	parent_ptr->subunits = unit->subunits;
	if (unit->method != NULL)
	{
		parent_ptr->method = unit->method;
	}
	for (int i = 0; i < parent_ptr->subunits.size(); i++)
	{
	        if (METHOD_PTR == parent_ptr->subunits[i]->type)
	        {
	                parent_ptr->subunits[i] = new unit_struct(*parent_ptr->subunits[i]);
	                parent_ptr->subunits[i]->base = parent_ptr;
	        }
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
}
struct unit_struct* instantiate_unit(struct unit_struct *unit, struct unit_struct *base, struct unit_struct *parent)
{
	struct unit_struct *instance = new unit_struct;
	*instance = *unit;
	instance->mem_base = parent->type;
	if ((STRUCT == instance->type) && (METHOD == parent->type))
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
	else if ((STRUCT == parent->type) && (METHOD == parent->mem_base))
	{
	        instance->mem_base = METHOD;
	        instance->mem_offset = parent->mem_offset - instance->mem_offset;
	}
	else
	{
		instance->mem_offset += parent->mem_used + temp_reg_mem;
	}
	if ((METHOD_PTR == instance->type) && !parent->mem_base)
	{
	        instance->base = parent_ptr;
	}
	if (base != NULL)
	{
		instance->base = base;
	}
	if (STRUCT == instance->type)
	{
		instance->subunits = instantiate_subunits(instance, parent);
	}
	return instance;
}
void instantiate_method(struct instrx_struct *instrx)
{
        if ((METHOD == instrx->unit->type) || (METHOD_PTR == instrx->unit->type))
        {
	        instrx->unit = new unit_struct(*instrx->unit);
		instrx->unit->mem_used = parent_ptr->mem_used;
		instrx->unit->base_instrx = new instrx_struct;
		if ((METHOD == instrx->unit->type) && (NULL == parent_ptr->base_instrx))
		{
			instrx->unit->base_instrx->unit = parent_ptr->base->base;
		}
		else if (parent_ptr->base_instrx != NULL)
		{
			instrx->unit->base_instrx = parent_ptr->base_instrx;
		}
		else
		{
		        instrx->unit->base_instrx->unit = parent_ptr->base;
		}
		
		if (!parent_ptr->base->mem_base)
		{
		        instrx->unit->base_instrx->base_level = 2;
		}
	}
	else
	{
	        instrx->unit->method = new unit_struct(*instrx->unit->method);
		instrx->unit->method->mem_used = instrx->unit->mem_offset + WORD_SIZE;
		instrx->unit->method->base = instrx->unit;
		instrx->unit->method->mem_base = METHOD;
	}
	
}
struct unit_struct* instantiate_as_ptr(struct unit_struct *unit)
{
	struct unit_struct *new_ptr = instantiate_unit(basic_units[PTR], NULL, parent_ptr);
	new_ptr->typing = unit;
	
	return new_ptr;
}
vector<struct unit_struct*> instantiate_subunits(struct unit_struct *superunit, struct unit_struct *parent)
{
	vector<struct unit_struct*> units;
	
	for (int i = 0; i < superunit->subunits.size(); i++)
	{
		if (STRUCT == superunit->subunits[i]->mem_base)
		{
			units.push_back(instantiate_unit(superunit->subunits[i], NULL, parent));
		}
	}
	return units;
}

void handle_instantiation(struct instrx_struct *instrx)
{
	if (((METHOD_PTR == instrx->unit->type) && instrx->unit->mem_base && (new_instrx.oper != INSERTION))
		|| ((METHOD == instrx->unit->type) && !instrx->unit->mem_base))
	{
		instantiate_method(instrx);
	}
	else if (!instrx->unit->mem_base && (instrx->base_level != -1))
	{
		if (instrx->is_ptr)
		{
			instrx->unit = instantiate_as_ptr(instrx->unit);
		}
		else
		{
		        struct unit_struct *base = NULL;
		        if (instrx->ptr_source != NULL)
		        {
		                base = instrx->ptr_source->unit;
		        }
		        struct unit_struct *typing = instrx->unit;
			instrx->unit = instantiate_unit(instrx->unit, base, parent_ptr);
			if (STRUCT == instrx->unit->type)
			{
			        instrx->unit->typing = typing;
			}
			if (STRUCT == parent_ptr->type)
			{
			        instrx->base_level = 2;
			}
			
			if ((instrx->unit->method != NULL) && (instrx->oper != DEFINE) && (new_instrx.oper != SUBUNIT))
			{
				instantiate_method(instrx);
			}
		}
	}
}
void find_unit_in_instrx(string name, struct instrx_struct *instrx)
{
        find_unit_in_superunit(name, instrx->unit);
        if ((new_instrx.unit != NULL)
            && ((PTR == instrx->unit->type) || (-1 == instrx->base_level) || (new_instrx.unit->base != NULL)))
        {
                new_instrx.ptr_source = instrx;
        }
}
void find_unit_in_superunit_no_instrx(string name, struct unit_struct *superunit)
{
        find_unit_in_superunit(name, superunit);
        if ((new_instrx.unit != NULL) && (new_instrx.unit->base != NULL) && (new_instrx.unit->type != METHOD_PTR))
        {
                new_instrx.ptr_source = new instrx_struct;
                new_instrx.ptr_source->unit = superunit;
        }
}
void id_unit(string name)
{
	struct unit_struct *superunit = parent_ptr;
	while ((NULL == new_instrx.unit) && (superunit != NULL) && (METHOD == superunit->mem_base))
	{
		find_unit_in_superunit_no_instrx(name, superunit);
		superunit = superunit->parent;
	}
	int base_level = 0;
	while ((NULL == new_instrx.unit) && (superunit != NULL))
	{
		find_unit_in_superunit_no_instrx(name, superunit);
		superunit = superunit->base;
		base_level++;
	}
	if ((new_instrx.unit != NULL) && (superunit != NULL))
	{
	        new_instrx.base_level = base_level;
	        if (STRUCT == parent_ptr->type)
	        {
	                new_instrx.base_level = 2;
	        }
	}
	superunit = parent_ptr;
	
	while ((NULL == new_instrx.unit) && (superunit != NULL) && (METHOD == superunit->mem_base))
	{
	        if ((superunit->base_instrx != NULL) && (superunit->base_instrx->unit != NULL))
	        {
		        find_unit_in_instrx(name, superunit->base_instrx);
		}
		superunit = superunit->parent;
	}
}


void handle_last_instrx()
{
	
	if ((parent_ptr->instrx_list.size() > 0) && (new_instrx.oper != DEFINE))
	{
		struct instrx_struct *instrx = parent_ptr->instrx_list.back();
		if ((DEF_NONE == instrx->unit->type) && (0 == instrx->unit->name.length()))
		{
			set_error(UNDEFINED_UNIT, instrx->unit_line, instrx->unit->name);
		}
		else if ((INT_CONST == instrx->unit->type) && (INSERTION == new_instrx.oper))
		{
		        set_error(INVALID_USE_OF_OPER, instrx->unit_line, ":");
		}
		else if ((DEFINE == instrx->oper) && (1 == parent_ptr->instrx_list.size()))
		{
			handle_inheritance(instrx->unit);
		}
		else if ((instrx->unit->type != DEF_NONE) && (instrx->unit->type != INT_CONST)
		                  && (!instrx->is_ptr || (instrx->unit->type != METHOD)))
		{
			handle_instantiation(instrx);
			if (DEFINE == instrx->oper)
			{
				handle_define_statement(parent_ptr->instrx_list[parent_ptr->instrx_list.size() - 2]->unit, instrx->unit);
			}
		}
	}
}
struct unit_struct *get_correct_method_type()
{
	if ((DEFINE == new_instrx.oper) || (SUBUNIT == new_instrx.oper))
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
	if ((SUBUNIT == new_instrx.oper) && ((new_instrx.unit->type != METHOD) || (parent_ptr->instrx_list.back()->oper != DEFINE)))
	{
	        if (new_instrx.unit->type != METHOD_PTR)
	        {
		        handle_instantiation(parent_ptr->instrx_list.back());
		}
		parent_ptr->instrx_list.back()->ptr_source = new instrx_struct(*parent_ptr->instrx_list.back());
		parent_ptr->instrx_list.back()->ptr_source->oper = NO_OPER;
		parent_ptr->instrx_list.back()->unit = new_instrx.unit;
		parent_ptr->instrx_list.back()->base_level = new_instrx.base_level;
	}
	else
	{
	        struct instrx_struct *temp = new instrx_struct(new_instrx);
	        
		
		if ((INSERTION == new_instrx.oper) || (SUBUNIT == new_instrx.oper)
		    || (WHILE == new_instrx.oper) || (ELSE == new_instrx.oper) || (BRANCH == new_instrx.oper))
		{
			parent_ptr->instrx_list.back()->insertion_source = temp;
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
		parent_ptr->instrx_list.push_back(temp);
		
		
	}
	new_instrx.oper = NO_OPER;
	new_instrx.base_level = 0;
	new_instrx.is_ptr = 0;
	new_instrx.ptr_source = NULL;
	parent_ptr->instrx_list.back()->unit_line = line_num;
}
struct unit_struct* in_unit(struct unit_struct *unit)
{
        if (STRUCT == unit->type)
        {
                return unit->subunits[0];
        }
        else
        {
                return unit;
        }
}
void handle_unit(struct unit_struct *unit)
{
	new_instrx.unit = unit;
	handle_new_instrx();
}
void handle_base()
{
        if (parent_ptr->base_instrx != NULL)
        {
                new_instrx.unit = parent_ptr->base_instrx->unit;
                new_instrx.base_level = parent_ptr->base_instrx->base_level;
        }
        else
        {
                new_instrx.unit = parent_ptr->base;
                new_instrx.base_level = -1;
        }
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
			if (METHOD == parent_ptr->instrx_list.back()->unit->type)
			{
				unit->type = METHOD;
				handle_new_method(unit);
				parent_ptr->method = unit;
			}
		}
		handle_define_statement(parent_ptr->instrx_list.back()->unit, unit);
		parent_ptr->instrx_list.back()->unit = basic_units[DEF_NONE];
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
			unit->base_instrx = new instrx_struct(*parent_ptr->instrx_list.back());
			unit->base = parent_ptr->instrx_list.back()->unit;
			unit->mem_used += parent_ptr->instrx_list.back()->unit->mem_used;
		}
		else if (new_instrx.oper != BRANCH)
		{
			
			if (new_instrx.is_ptr)
			{
				unit->base = in_unit(parent_ptr->instrx_list.back()->unit)->base;
				unit->mem_base = METHOD_PTR;
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
		handle_base();
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
				find_unit_in_instrx(name, new instrx_struct(*parent_ptr->instrx_list.back()));
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
	parse_file("sysapi.txt");
	parse_file(string("sysapi_")+FORMAT+".txt");
	
	parse_file(argv[1]);
	end_base_unit();
	if (num_errors > 0)
	{
		
		print_errors();
	}
	else
	{
		write_xc(FORMAT);
	}
	
	return 0;
}

