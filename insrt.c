#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdbool.h>

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
#define GREATER_THAN 12
#define MODULUS 13
#define MULTIPLY 14


#define DEF_NONE 0
#define DEF_MAIN 1
#define DEF_ADDR 2
#define DEF_INT 3
#define DEF_BASE 4
#define DEF_SYSRUN 5
#define DEF_SUPERUNIT 6
#define DEF_INT_CONST 7
#define DEF_PAREN 8
#define DEF_DO 9

#define NUM_BASIC_UNITS 10

#define UNIT_NAME_MAX_LEN 20
#define INT_CONST_MAX_LEN 5
#define MAX_SUBUNITS 100
#define MAX_SUPERUNIT_STACK 10
#define MAX_ERRORS 100
#define MAX_UNIT_CHAIN_LEN 100
#define MAX_DO_UNITS 100

#define REG_DEFAULT "rsp"
#define REG_TEMP "rax"
#define REG_BASE "rbx"
#define REG_PTR "rcx"

char* error_messages[] = 
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
	int unit_line;
	int instrx_num;
	struct unit_struct *ptr_source;
	struct instrx_struct *insertion_source;
};

struct do_unit_struct
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
	char *section;
	
};


struct unit_struct
{
	char *name;
	int definition;
	int mem_offset;
	int mem_used;
	int mem_base;
	struct unit_struct *base;
	struct unit_struct **subunits;
	int num_subunits;
	int f_num;
	struct unit_struct *do_unit;
	struct unit_struct *parent;
	struct instrx_struct **instrx_list;
	int num_instrx;
};

char* basic_unit_names[] = {"", "_main", "addr", "int", "", "sysrun", "", "", "", "do" };
char opers[] = {'\0', ':', '~', '.', '?', '=', '+', '/', ',', '!', '-', '<', '>', '%', '*'};

struct error_struct errors[MAX_ERRORS];
int num_errors = 0;

struct unit_struct *parent_ptr;

struct unit_struct *subunit_stack[MAX_SUBUNITS];

int subunit_stack_idx;

struct unit_struct basic_unit_data[NUM_BASIC_UNITS];
struct unit_struct *basic_units[NUM_BASIC_UNITS];
struct instrx_struct *instrxs[MAX_UNIT_CHAIN_LEN];
int instrx_idx;

struct unit_struct *funcs[MAX_DO_UNITS];
int start_idx;

int poss_double_oper = -1;
int line_num;

FILE* err_out;
FILE* xcfile;
int num_b = 0;
int define_idx = -1;
int num_f;
int instantiated_base = 1;

void dbg_out_str(char* msg, int msg_len)
{
	FILE *test_f = fopen("output.txt", "a");
	(void)fwrite(msg, 1, msg_len, test_f);
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

void set_error(int type, int line, char *section)
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
		(void)fprintf(stdout, "%s", errors[i].section);
		if ((UNIT_NAME_TOO_LONG == errors[i].type) || (INT_CONST_TOO_LONG == errors[i].type))
		{
			(void)fprintf(stdout, "...");
		}
		(void)fprintf(stdout, "\": %s\n", error_messages[errors[i].type]);
	}
}


struct unit_struct** instantiate_superunit(struct unit_struct *superunit, struct unit_struct *base);
struct unit_struct* instantiate_unit(struct unit_struct *unit, struct unit_struct *base);
void write_instrxs(struct instrx_struct **instrxs, int num_instrx);
void write_unit(struct unit_struct *unit);

void setup_basic_units(void)
{
	for (int i = 0; i < NUM_BASIC_UNITS; i++)
	{
		basic_units[i] = &basic_unit_data[i];
		basic_units[i]->num_subunits = 0;
		basic_units[i]->definition = i;
		basic_units[i]->mem_base = false;
		basic_units[i]->name = basic_unit_names[i];
	}
	basic_units[DEF_ADDR]->mem_used = 1;
	basic_units[DEF_INT]->mem_used = 1;
	basic_units[DEF_SYSRUN]->do_unit = basic_units[DEF_DO];
}
void init(void)
{
	instrx_idx = 0;
	start_idx = 0;
	num_f = 1;
	parent_ptr = NULL;
	subunit_stack_idx = 0;
	setup_basic_units();
}
void write_unit(struct unit_struct *unit)
{
	if (DEF_INT_CONST == unit->definition)
	{
		(void)fprintf(xcfile, "%s", unit->name);
	}
	else
	{
		if (DEF_SUPERUNIT == unit->mem_base)
		{
			(void)fprintf(xcfile, "[%s+%d]", REG_BASE, unit->mem_offset * 8);
		}
		else if (DEF_ADDR == unit->mem_base)
		{
			(void)fprintf(xcfile, "[%s+%d]", REG_PTR, unit->mem_offset * 8);
		}
		else
		{
			(void)fprintf(xcfile, "[%s-%d]", REG_DEFAULT, unit->mem_offset * 8);
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
	if (0 == strlen(unit->name))
	{
		write_instrxs(unit->instrx_list, unit->num_instrx);
	}
	else
	{
		(void)fprintf(xcfile, "lea\t%s,\t", REG_BASE);
		(void)fprintf(xcfile, "[%s-%d]\n", REG_DEFAULT, unit->base->mem_offset * 8);
		(void)fprintf(xcfile, "sub\t%s,\t%d\n", REG_DEFAULT, (unit->mem_offset + unit->base->mem_used - 1) * 8);
		(void)fprintf(xcfile, "call\tf%d\n", unit->f_num);
		(void)fprintf(xcfile, "add\t%s,\t%d\n", REG_DEFAULT, (unit->mem_offset + unit->base->mem_used - 1) * 8);
		(void)fprintf(xcfile, "mov\t%s,\t[%s]\n", REG_BASE, REG_DEFAULT);
	}
}

void write_line(struct instrx_struct *instrx)
{
	if (instrx->ptr_source != NULL)
	{
		if (DEF_SUPERUNIT == instrx->ptr_source->definition)
		{
			(void)fprintf(xcfile, "lea\t%s,\t", REG_TEMP);
		}
		else
		{
			(void)fprintf(xcfile, "mov\t%s,\t", REG_TEMP);
		}
		write_unit(instrx->ptr_source);
		(void)fprintf(xcfile, "\nmov\t[%s-%d],\t%s\n", REG_DEFAULT, 
									(instrx->unit->mem_offset - instrx->unit->base->mem_offset) * 8, REG_TEMP);
	}
	if (instrx->insertion_source != NULL)
	{
		write_line(instrx->insertion_source);
	}
	if (DEF_ADDR == instrx->unit->mem_base)
	{
		(void)fprintf(xcfile, "mov\t%s,\t", REG_PTR);
		write_unit(instrx->unit->base);
		(void)fprintf(xcfile, "\n");
	}
	if ((instrx->insertion_source != NULL) && (instrx->insertion_source->oper != SUBUNIT))
	{
		(void)fprintf(xcfile, "mov\t");
		
		if (DEF_INT_CONST == instrx->insertion_source->unit->definition)
		{
			
			(void)fprintf(xcfile, "qword\t");
		}
		write_unit(instrx->unit);
		(void)fprintf(xcfile, ",\t");
		if (DEF_INT_CONST == instrx->insertion_source->unit->definition)
		{
			(void)fprintf(xcfile, "%s", instrx->insertion_source->unit->name);
		}
		else
		{
			(void)fprintf(xcfile, "%s", REG_TEMP);
		}
		(void)fprintf(xcfile, "\n");
	}
	if ((ADD == instrx->oper) && ((DEF_DO == instrx->unit->definition) || (DEF_SUPERUNIT == instrx->unit->definition)))
	{
		(void)fprintf(xcfile, "mov\t[%s-%d],\t%s\n", REG_DEFAULT, (instrx->unit->parent->mem_offset) * 8, REG_TEMP);
	}
	
	if (DEF_SUPERUNIT == instrx->unit->definition)
	{
		if (instrx->unit->do_unit != NULL)
		{
			write_do(instrx->unit->do_unit);
		}
	}
	if (DEF_DO == instrx->unit->definition)
	{
		int b_num = num_b;
		if (BRANCH == instrx->oper)
		{
			num_b++;
			(void)fprintf(xcfile, "cmp\t%s,\t0\nje\tb%d\n", REG_TEMP, b_num);
		}
		write_do(instrx->unit);
		if (BRANCH == instrx->oper)
		{
			(void)fprintf(xcfile, "b%d:\n", b_num);
		}
	}
	if ((ADD == instrx->oper) && ((DEF_DO == instrx->unit->definition) || (DEF_SUPERUNIT == instrx->unit->definition)))
	{
		(void)fprintf(xcfile, "mov\t%s,\t[%s-%d]\n", REG_TEMP, REG_DEFAULT, (instrx->unit->parent->mem_offset) * 8);
	}
	switch (instrx->oper)
	{
	case INSERTION:
		if (((DEF_DO == instrx->unit->definition) && (NULL == instrx->unit->base))
					|| (DEF_INT_CONST == instrx->unit->definition))
		{
			return;
		}
		else if (DEF_ADDR == instrx->unit->definition)
		{
			(void)fprintf(xcfile, "lea\t%s,\t", REG_TEMP);
		}
		else
		{
			(void)fprintf(xcfile, "mov\t%s,\t", REG_TEMP);
		}
		break;
	case DIVIDE:
	case MODULUS:
		if (DEF_INT_CONST == instrx->unit->definition)
		{
			(void)fprintf(xcfile, "xor\trdx,\trdx\nmov\tqword\trcx,\t%s\ndiv\trcx\n", instrx->unit->name);
		}
		else
		{
			(void)fprintf(xcfile, "xor\trdx,\trdx\ndiv\tqword\t");
		}
		break;
	case ADD:
		
		(void)fprintf(xcfile, "add\t%s,\t", REG_TEMP);
		break;
	case LOAD:
		(void)fprintf(xcfile, "mov\t%s,\t", REG_TEMP);
		break;
	case COMPARE:
		(void)fprintf(xcfile, "cmp\t%s,\t", REG_TEMP);
		break;
	default:
		break;
	}
	if ((instrx->oper != NO_OPER) && (instrx->oper != DEFINE) && (instrx->oper != BRANCH) && (instrx->oper != SUBUNIT) 
		&& ((instrx->unit->definition != DEF_INT_CONST) || ((instrx->oper != MODULUS) && (instrx->oper != DIVIDE))))
	{
		write_unit(instrx->unit);
		(void)fprintf(xcfile, "\n");
	}
	if (MODULUS == instrx->oper)
	{
		(void)fprintf(xcfile, "mov\t%s,\trdx\n", REG_TEMP);
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
		if ((instrxs[i]->oper != INSERTION) && (instrxs[i]->oper != SUBUNIT) && (instrxs[i]->unit->mem_base != false))
		{
			write_line(instrxs[i]);
		}
	}
}
void write_f(void)
{
	for (int i = 1; i < num_f; i++)
	{
		if (false == funcs[i]->mem_base)
		{
			(void)fprintf(xcfile, "f%d:\npush\t%s\n", funcs[i]->f_num, REG_BASE);
			write_instrxs(funcs[i]->instrx_list, funcs[i]->num_instrx);
			(void)fprintf(xcfile, "pop\t%s\nret\n", REG_BASE);
		}
	}
}

void write_xc(void)
{
	xcfile = fopen("xc.asm", "w");
	(void)fprintf(xcfile, "global\t_main\n_main:\n");
	write_instrxs(parent_ptr->instrx_list, parent_ptr->num_instrx);
	(void)fprintf(xcfile, "ret\n");
	write_f();
	(void)fprintf(xcfile, "f0:\nmov\trax,\t[rbx+0]\nmov\trdx,\t[rbx+8]\nmov\trdi,\t[rbx+16]\n");
	(void)fprintf(xcfile, "mov\trsi,\t[rbx+24]\nsyscall\n");
	(void)fprintf(xcfile, "ret\nSECTION .bss\nstaticdata:\tresb\t%d\n", 8);
	fclose(xcfile);
}
void *clone_data(void *data, int data_size)
{
	void *clone;
	
	clone = malloc(data_size);
	memcpy(clone, data, data_size);
	return clone;
}
struct unit_struct *find_unit_from_list(struct unit_struct **unit_list, int unit_list_size, 
										char *unit_name_chars, int unit_name_size)
{
	struct unit_struct *unit_match = NULL;
	for (int i = 0; i < unit_list_size; i++)
	{
		if ((strlen(unit_list[i]->name) == unit_name_size) 
					&& (0 == memcmp(unit_list[i]->name, unit_name_chars, unit_name_size)))
		{
			unit_match = unit_list[i];
			break;
		}
	}
	return unit_match;
}

struct unit_struct *find_unit_in_superunit(char *unit_name_chars, int unit_name_size, struct unit_struct *superunit)
{
	return find_unit_from_list(superunit->subunits, superunit->num_subunits, unit_name_chars, unit_name_size);
}
void handle_define_statement()
{
	if (define_idx == start_idx)
	{
		parent_ptr->num_subunits = instrxs[define_idx]->unit->num_subunits;
		parent_ptr->mem_used = instrxs[define_idx]->unit->mem_used;
		if (parent_ptr->num_subunits > 0)
		{
			memcpy(parent_ptr->subunits, instrxs[define_idx]->unit->subunits, 
											(instrxs[define_idx]->unit->num_subunits * sizeof(struct unit_struct*)));
		}
		if (instrxs[define_idx]->unit->do_unit != NULL)
		{
			parent_ptr->do_unit = instrxs[define_idx]->unit->do_unit;
		}
	}
	else
	{
		struct unit_struct *defined_unit = instrxs[define_idx - 1]->unit;
		struct unit_struct *definition_unit = instrxs[define_idx]->unit;
		definition_unit->name = defined_unit->name;
		if ((DEF_SUPERUNIT == definition_unit->mem_base) || (DEF_DO == definition_unit->mem_base))
		{
			parent_ptr->mem_used += definition_unit->mem_used;
		}
		parent_ptr->subunits[parent_ptr->num_subunits] = definition_unit;
		parent_ptr->num_subunits++;
		if (DEF_DO == defined_unit->definition)
		{
			definition_unit->definition = DEF_DO;
			definition_unit->mem_used = 1;
			parent_ptr->do_unit = definition_unit;
			funcs[num_f] = definition_unit;
			
			definition_unit->f_num = num_f;
			num_f++;
		}
	}
}
struct unit_struct** instantiate_superunit(struct unit_struct *superunit, struct unit_struct *base)
{
	struct unit_struct** units = NULL;
	units = clone_data(superunit->subunits, superunit->num_subunits * sizeof(struct unit_struct*));
	
	for (int i = 0; i < superunit->num_subunits; i++)
	{
		if (DEF_SUPERUNIT == superunit->subunits[i]->mem_base)
		{
			units[i] = instantiate_unit(superunit->subunits[i], base);
		}
	}
	return units;
}
struct unit_struct* instantiate_unit(struct unit_struct *unit, struct unit_struct *base)
{
	
	struct unit_struct *instance = NULL;
	
	instance = clone_data(unit, sizeof(struct unit_struct));
	if (instance->do_unit != NULL)
	{
		instance->do_unit = instantiate_unit(instance->do_unit, base);
		instance->do_unit->base = instance;
	}
	instance->mem_base = parent_ptr->definition;
	
	if ((DEF_SUPERUNIT == unit->definition) && (0 == strlen(unit->name)))
	{
		instance->definition = DEF_DO;
	}
	if (base != NULL)
	{
		if (DEF_SUPERUNIT == base->definition)
		{
			instance->mem_offset = base->mem_offset - instance->mem_offset;
		}
		else
		{
			instance->mem_base = DEF_ADDR;
		}
		instance->base = base;
	}
	else if ((DEF_SUPERUNIT == instance->definition) && (DEF_DO == parent_ptr->definition))
	{
		base = instance;
		instance->mem_offset = parent_ptr->mem_used + instance->mem_used - 1;
	}
	else
	{
		instance->mem_offset += parent_ptr->mem_used;
	}
	if (DEF_SUPERUNIT == instance->definition)
	{
		instance->subunits = instantiate_superunit(instance, base);
		instance->parent = parent_ptr;
	}
	else if (DEF_ADDR == instance->definition)
	{
		instance->subunits = instantiate_superunit(instance, instance);
	}
	return instance;
}
void instantiate_units()
{
	for (int i = start_idx; i < instrx_idx; i++)
	{
		if ((i >= define_idx) && (DEF_NONE == instrxs[i]->unit->definition))
		{
			set_error(UNDEFINED_UNIT, instrxs[i]->unit_line, instrxs[i]->unit->name);
		}
		else if ((false == instrxs[i]->unit->mem_base) && (i >= define_idx) && (define_idx != start_idx) 
							&& ((i == instrx_idx - 1) || instantiated_base))
		{
			
			if ((DEFINE == instrxs[i]->oper) && (0 == strlen(instrxs[i]->unit->name)))
			{
				instrxs[i]->unit = clone_data(instrxs[i]->unit, sizeof(struct unit_struct));
			}
			else
			{
				instrxs[i]->unit = instantiate_unit(instrxs[i]->unit, NULL);
				if (DEF_DO == instrxs[i]->unit->definition)
				{
					instrxs[i]->unit->mem_used = instrxs[i]->unit->mem_offset;
					if (SUBUNIT == instrxs[i]->oper)
					{
						instrxs[i]->unit->base = instrxs[i-1]->unit;
						instrxs[i]->unit->mem_used += instrxs[i]->unit->base->mem_used;
					}
					else if ((instrxs[i]->oper != BRANCH) && (NULL == instrxs[i]->unit->base))
					{
						instrxs[i]->unit->mem_used++;
						instrxs[instrx_idx]->oper = LOAD;
					}
				}
			}
		}
	}
}
struct unit_struct *find_unit_in_parent(char *unit_name_chars, int unit_name_size, struct unit_struct *parent)
{
	struct unit_struct *found_unit = find_unit_in_superunit(unit_name_chars, unit_name_size, parent);
	if (NULL == found_unit)
	{
		if (parent->base != NULL)
		{
			found_unit = find_unit_in_superunit(unit_name_chars, unit_name_size, parent->base);
		}
	}
	if ((NULL == found_unit) && (parent->parent != NULL))
	{
		found_unit = find_unit_in_parent(unit_name_chars, unit_name_size, parent->parent);
		if ((DEF_SUPERUNIT == parent->definition) && (found_unit != NULL) && (DEF_SUPERUNIT == found_unit->mem_base))
		{
			parent->base = clone_data(parent->parent, sizeof(struct unit_struct));
			parent->base->definition = DEF_ADDR;
			parent->base->mem_base = DEF_SUPERUNIT;
			parent->base->mem_offset = parent->mem_used;
			parent->base->subunits = instantiate_superunit(parent->base, parent->base);
			parent->mem_used++;
			found_unit = find_unit_in_parent(unit_name_chars, unit_name_size, parent->base);
		}
	}
	return found_unit;
}

void handle_statement()
{
	instantiate_units();
	if (define_idx >= 0)
	{
		handle_define_statement();
		define_idx = -1;
	}
	start_idx = instrx_idx;
}
void handle_unit(struct unit_struct *unit)
{
	if (DEFINE == instrxs[instrx_idx]->oper)
	{
		define_idx = instrx_idx;
		if (instantiated_base && (0 == strlen(unit->name)) && (instrxs[instrx_idx - 1]->unit->definition != DEF_DO))
		{
			unit->base = clone_data(parent_ptr, sizeof(struct unit_struct));
			unit->base->definition = DEF_ADDR;
			unit->base->mem_base = DEF_SUPERUNIT;
			unit->base->subunits = instantiate_superunit(unit->base, unit->base);
			unit->mem_used++;
			
		}
	}
	else if ((INSERTION == instrxs[instrx_idx]->oper) 
							|| ((SUBUNIT == instrxs[instrx_idx]->oper) && instantiated_base && (0 == strlen(unit->name))))
	{
		instrxs[instrx_idx - 1]->insertion_source = instrxs[instrx_idx];
	}
	else if ((SUBUNIT == instrxs[instrx_idx]->oper) || ((ADD == instrxs[instrx_idx]->oper)
				&& (DEF_ADDR == instrxs[instrx_idx - 1]->unit->definition)))
	{
		instrx_idx--;
		parent_ptr->num_instrx--;
		if (ADD == instrxs[instrx_idx + 1]->oper)
		{
			memcpy(instrxs[instrx_idx]->unit, unit, sizeof(struct unit_struct));
			unit = instrxs[instrx_idx]->unit;
			unit->mem_used = 1;
			unit->definition = DEF_ADDR;
		}
		else if ((unit->base != NULL) && !unit->mem_base)
		{
			instrxs[instrx_idx]->ptr_source = instrxs[instrx_idx]->unit;
		}
		else if (!instantiated_base)
		{
			unit->base = instrxs[instrx_idx]->unit;
			
			instantiated_base = 1;
		}
	}
	if (DEF_BASE == unit->definition)
	{
		unit = parent_ptr;
		while (unit->definition != DEF_SUPERUNIT)
		{
			unit = unit->parent;
		}
		unit = unit->parent;
	}
	if ((unit->base != NULL) && !unit->mem_base && (NULL == instrxs[instrx_idx]->ptr_source))
	{
		instrxs[instrx_idx]->ptr_source = parent_ptr->base;
	}
	if (!instantiated_base)
	{
		instantiated_base = 1;
	}
	instrxs[instrx_idx]->unit = unit;
	instrxs[instrx_idx]->unit_line = line_num;
	instrx_idx++;
	parent_ptr->num_instrx++;
	if ((NULL == instrxs[instrx_idx]) || (instrxs[instrx_idx]->unit != NULL))
	{
		instrxs[instrx_idx] = malloc(sizeof(struct instrx_struct));
	}
	else
	{
		instrxs[instrx_idx]->oper = NO_OPER;
		instrxs[instrx_idx]->insertion_source = NULL;
	}
}


void handle_superunit()
{
	if (NULL == parent_ptr)
	{
		set_error(UNMATCHED_END_BRACE, line_num, "}");
		return;
	}
	handle_statement();
	parent_ptr->instrx_list = clone_data(&instrxs[instrx_idx - parent_ptr->num_instrx], 
																(parent_ptr->num_instrx * sizeof(struct instrx_struct*)));
	instrx_idx = instrx_idx - parent_ptr->num_instrx;
	instrxs[instrx_idx] = malloc(sizeof(struct instrx_struct));
	parent_ptr->subunits = clone_data(parent_ptr->subunits, (parent_ptr->num_subunits * sizeof(struct unit_struct*)));
	start_idx = instrx_idx;
	if (parent_ptr->parent != NULL)
	{
		parent_ptr = parent_ptr->parent;
	}
}
void new_superunit()
{
	int n = 0;
	struct unit_struct *unit;
	handle_unit(clone_data(basic_units[DEF_SUPERUNIT], sizeof(struct unit_struct)));
	handle_statement();
	unit = NULL;
	unit = instrxs[instrx_idx - 1]->unit;
	unit->parent = parent_ptr;
	unit->subunits = &parent_ptr->subunits[parent_ptr->num_subunits];
	parent_ptr = unit;
}
void handle_char(int c)
{
	for (int i = 0; i < 15; i++)
	{
		if (c == opers[i])
		{
			instrxs[instrx_idx]->oper = i;
			break;
		}
	}
	switch(c)
	{
	case ';':
		set_error(UNKNOWN_TOKEN, line_num, ";");
		break;
	case '{':
		new_superunit();
		break;
	case '}':
		handle_superunit();
		break;
		
		
	case '\n':
		
		line_num++;
		break;
	case '^':
		handle_unit(basic_units[DEF_BASE]);
		break;
	case '@':
		handle_unit(clone_data(basic_units[DEF_ADDR], sizeof(struct unit_struct)));
		
		instrxs[instrx_idx]->oper = ADD;
		break;
	case '`':
		instantiated_base = 0;
		break;
	default:
		break;
	}
}

void start_base_unit()
{
	parent_ptr = clone_data(basic_units[DEF_MAIN], sizeof(struct unit_struct));
	parent_ptr->parent = NULL;
	parent_ptr->definition = DEF_DO;
	parent_ptr->mem_used += 1;
	parent_ptr->subunits = subunit_stack;
	instrxs[instrx_idx] = malloc(sizeof(struct instrx_struct));
}
void end_base_unit()
{
	if (parent_ptr->parent != NULL)
	{
		set_error(MISSING_END_BRACE, line_num, "{");
	}
	if (NULL == parent_ptr->parent)
	{
		handle_superunit();
	}
}


char *make_unit_name(char *unit_name_chars, int unit_name_size)
{
	
	char *new_unit_name = NULL;
	new_unit_name = malloc(unit_name_size + 1);
	(void)memcpy(new_unit_name, unit_name_chars, unit_name_size);
	return new_unit_name;
}
void handle_unit_name(char *unit_name_chars, int unit_name_size)
{
	struct unit_struct *unit = NULL;
	
	if (NO_OPER == instrxs[instrx_idx]->oper)
	{
		handle_statement();
	}
	if ((unit_name_chars[0] >= '0') && (unit_name_chars[0] <= '9'))
	{
		unit = malloc(sizeof(struct unit_struct));
		unit->definition = DEF_INT_CONST;
		unit->name = make_unit_name(unit_name_chars, unit_name_size);
	}
	else
	{
		unit = find_unit_from_list(basic_units, NUM_BASIC_UNITS, unit_name_chars, unit_name_size);
		if (NULL == unit)
		{
			if (instrxs[instrx_idx]->oper != SUBUNIT)
			{
				unit = find_unit_in_parent(unit_name_chars, unit_name_size, parent_ptr);
			}
			else
			{
				unit = find_unit_in_superunit(unit_name_chars, unit_name_size, instrxs[instrx_idx - 1]->unit);
			}
		}
		if (NULL == unit)
		{
			unit = malloc(sizeof(struct unit_struct));
			unit->definition = DEF_NONE;
			unit->name = make_unit_name(unit_name_chars, unit_name_size);
		}
	}
	handle_unit(unit);
}

void parse_file(char* file_name)
{
	FILE* zyfile = fopen(file_name, "r");
	line_num = 1;
	char unit_name_buffer[UNIT_NAME_MAX_LEN];
	int unit_name_buffer_idx = 0;
	start_base_unit();
	int c = fgetc(zyfile);
	while (c != EOF)
	{
		if ((c >= 'A' && c <= 'Z') || (c >= 'a' && c <= 'z') || (c >= '0' && c <= '9'))
		{
			/* We're in the middle of a unit name - store char in buffer */
			
			if (unit_name_buffer_idx < UNIT_NAME_MAX_LEN)
			{
				unit_name_buffer[unit_name_buffer_idx] = c;
			}
			unit_name_buffer_idx++;
		}
		else
		{
			if (unit_name_buffer_idx > 0)
			{
				/* We've reached the end of a unit name */
				handle_unit_name(unit_name_buffer, unit_name_buffer_idx);
				
				/* Reset buffer_idx */
				unit_name_buffer_idx = 0;
			}
			handle_char(c);
		}
		c = fgetc(zyfile);
	}
	if (unit_name_buffer_idx > 0)
	{
		/* Final unit name still unhandled */
		handle_unit_name(unit_name_buffer, unit_name_buffer_idx);
	}
	fclose(zyfile);
	end_base_unit();
}
int main(void)
{
	
	char* zyfile = "insrt_test.txt";
	
	init();
	parse_file(zyfile);
	
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
