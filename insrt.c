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
#define COND 12
#define WHILE 13
#define MULTIPLY 14
#define MODULUS 15
#define GREATER_THAN 16

#define DEF_NONE 0
#define MAIN 1
#define PTR 2
#define INT 3
#define BASE 4
#define SYSRUN 5
#define STRUCT 6
#define INT_CONST 7
#define PAREN 8
#define DO 9

#define NUM_BASIC_UNITS 10

#define UNIT_NAME_MAX_LEN 20
#define INT_CONST_MAX_LEN 5
#define MAX_SUBUNITS 100
#define MAX_SUPERUNIT_STACK 10
#define MAX_UNIT_CHAIN_LEN 100
#define MAX_ERRORS 100
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
	int type;
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
char opers[] = {'\0', ':', '~', '.', '?', '=', '+', '/', ',', '!', '-', '<', '\0', '#', '*', '%', '>'};

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
struct instrx_struct new_instrx;
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
		basic_units[i]->type = i;
		basic_units[i]->mem_base = false;
		basic_units[i]->name = basic_unit_names[i];
	}
	basic_units[PTR]->mem_used = 1;
	basic_units[INT]->mem_used = 1;
	basic_units[SYSRUN]->do_unit = basic_units[DO];
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
	if (INT_CONST == unit->type)
	{
		(void)fprintf(xcfile, "%s", unit->name);
	}
	else
	{
		if (STRUCT == unit->mem_base)
		{
			(void)fprintf(xcfile, "[%s+%d]", REG_BASE, unit->mem_offset * 8);
		}
		else if (PTR == unit->mem_base)
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
		(void)fprintf(xcfile, "\nsub\t%s,\t%d\n", REG_DEFAULT, (unit->mem_offset - 1) * 8);
		(void)fprintf(xcfile, "call\tf%d\n", unit->f_num);
		(void)fprintf(xcfile, "add\t%s,\t%d\n", REG_DEFAULT, (unit->mem_offset - 1) * 8);
		(void)fprintf(xcfile, "mov\t%s,\t[%s]\n", REG_BASE, REG_DEFAULT);
	}
}
void write_insertion(struct unit_struct *unit)
{
	if ((STRUCT == unit->type) && (unit->base != NULL))
	{
		if (STRUCT == unit->mem_base)
		{
			(void)fprintf(xcfile, "[%s+%d]", REG_BASE, (unit->mem_offset + 1) * 8);
		}
		else
		{
			(void)fprintf(xcfile, "[%s-%d]", REG_DEFAULT, (unit->mem_offset - 1) * 8);
		}
	}
	else
	{
		write_unit(unit);
	}
}
void write_line(struct instrx_struct *instrx)
{
	if ((instrx->ptr_source != NULL) && instrx->ptr_source->mem_base && (instrx->unit->type != DO))
	{
		if (STRUCT == instrx->ptr_source->type)
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
	if (PTR == instrx->unit->mem_base)
	{
		(void)fprintf(xcfile, "mov\t%s,\t", REG_PTR);
		write_unit(instrx->unit->base);
		(void)fprintf(xcfile, "\n");
	}
	if ((instrx->insertion_source != NULL) && (instrx->insertion_source->oper != SUBUNIT))
	{
		(void)fprintf(xcfile, "mov\t");
		if (INT_CONST == instrx->insertion_source->unit->type)
		{
			(void)fprintf(xcfile, "qword\t");
		}
		write_insertion(instrx->unit);
		(void)fprintf(xcfile, ",\t");
		if (INT_CONST == instrx->insertion_source->unit->type)
		{
			(void)fprintf(xcfile, "%s", instrx->insertion_source->unit->name);
		}
		else
		{
			(void)fprintf(xcfile, "%s", REG_TEMP);
		}
		(void)fprintf(xcfile, "\n");
	}
	if ((ADD == instrx->oper) && ((DO == instrx->unit->type) || (STRUCT == instrx->unit->type)))
	{
		(void)fprintf(xcfile, "mov\t[%s-%d],\t%s\n", REG_DEFAULT, (instrx->unit->parent->mem_offset) * 8, REG_TEMP);
	}
	
	if ((STRUCT == instrx->unit->type) && (instrx->unit->do_unit != NULL) && (instrx->unit->do_unit->mem_base))
	{
		write_do(instrx->unit->do_unit);
	}
	
	if (DO == instrx->unit->type)
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
		write_do(instrx->unit);
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
	if ((ADD == instrx->oper) && ((DO == instrx->unit->type) || (STRUCT == instrx->unit->type)))
	{
		(void)fprintf(xcfile, "mov\t%s,\t[%s-%d]\n", REG_TEMP, REG_DEFAULT, (instrx->unit->parent->mem_offset) * 8);
	}
	switch (instrx->oper)
	{
	case INSERTION:
		if ((DO == instrx->unit->type) || (INT_CONST == instrx->unit->type))
		{
			
			return;
		}
		else if ((instrx->ptr_source != NULL) && DEF_NONE == instrx->ptr_source->type)
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
		if (INT_CONST == instrx->unit->type)
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
	case SUBTRACT:
		(void)fprintf(xcfile, "sub\t%s,\t", REG_TEMP);
		break;
	default:
		break;
	}
	if ((instrx->oper != NO_OPER) && (instrx->oper != COND) && (instrx->oper != DEFINE) && (instrx->oper != SUBUNIT) 
		&& ((instrx->unit->type != INT_CONST) || ((instrx->oper != MODULUS) && (instrx->oper != DIVIDE))))
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
void find_unit_in_superunit(char *unit_name_chars, int unit_name_size, struct unit_struct *superunit)
{
	new_instrx.unit = find_unit_from_list(superunit->subunits, superunit->num_subunits, unit_name_chars, unit_name_size);
	if ((new_instrx.unit != NULL) && !superunit->mem_base && (STRUCT == new_instrx.unit->mem_base))
	{
		new_instrx.unit = NULL;
	}
	if ((new_instrx.unit != NULL) && !new_instrx.unit->mem_base 
							&& (new_instrx.unit->base != NULL) && new_instrx.unit->base->mem_base && superunit->mem_base)
	{
		new_instrx.ptr_source = superunit;
	}
}
void handle_inheritance(struct unit_struct *unit)
{
	parent_ptr->num_subunits = unit->num_subunits;
	parent_ptr->mem_used = unit->mem_used;
	
	if (parent_ptr->num_subunits > 0)
	{
		memcpy(parent_ptr->subunits, unit->subunits, (unit->num_subunits * sizeof(struct unit_struct*)));
	}
	if (unit->do_unit != NULL)
	{
		parent_ptr->do_unit = unit->do_unit;
	}
}
void handle_define_statement(struct unit_struct *defined_unit, struct unit_struct *definition_unit)
{
	definition_unit->name = defined_unit->name;
	if ((STRUCT == definition_unit->mem_base) || (DO == definition_unit->mem_base))
	{
		parent_ptr->mem_used += definition_unit->mem_used;
	}
	parent_ptr->subunits[parent_ptr->num_subunits] = definition_unit;
	parent_ptr->num_subunits++;
	if (DO == defined_unit->type)
	{
		definition_unit->type = DO;
		definition_unit->mem_used = 1;
		parent_ptr->do_unit = definition_unit;
		funcs[num_f] = definition_unit;
		definition_unit->f_num = num_f;
		num_f++;
	}
}
struct unit_struct** instantiate_superunit(struct unit_struct *superunit, struct unit_struct *base)
{
	struct unit_struct** units = clone_data(superunit->subunits, superunit->num_subunits * sizeof(struct unit_struct*));
	
	for (int i = 0; i < superunit->num_subunits; i++)
	{
		if (STRUCT == superunit->subunits[i]->mem_base)
		{
			units[i] = instantiate_unit(superunit->subunits[i], base);
		}
	}
	return units;
}
struct unit_struct* instantiate_unit(struct unit_struct *unit, struct unit_struct *base)
{
	struct unit_struct *instance = clone_data(unit, sizeof(struct unit_struct));
	instance->mem_base = parent_ptr->type;
	if (base != NULL)
	{
		if (STRUCT == base->type)
		{
			instance->mem_offset = base->mem_offset - instance->mem_offset;
		}
		else
		{
			instance->mem_base = PTR;
		}
		instance->base = base;
	}
	else if ((STRUCT == instance->type) && (DO == parent_ptr->type))
	{
		base = instance;
		instance->mem_offset = parent_ptr->mem_used + instance->mem_used - 1;
	}
	else
	{
		instance->mem_offset += parent_ptr->mem_used;
	}
	
	if (STRUCT == instance->type)
	{
		instance->subunits = instantiate_superunit(instance, base);
		instance->parent = parent_ptr;
	}
	else if (PTR == instance->type)
	{
		instance->subunits = instantiate_superunit(instance, instance);
	}
	
	return instance;
}
void find_unit_in_parent(char *unit_name_chars, int unit_name_size, struct unit_struct *parent)
{
	find_unit_in_superunit(unit_name_chars, unit_name_size, parent);
	if ((NULL == new_instrx.unit) && (parent->parent != NULL) && (DO == parent->mem_base))
	{
		find_unit_in_parent(unit_name_chars, unit_name_size, parent->parent);
	}
	if ((NULL == new_instrx.unit) && (parent->base != NULL))
	{
		find_unit_in_parent(unit_name_chars, unit_name_size, parent->base);
	}
}
void handle_last_instrx()
{
	if ((parent_ptr->num_instrx > 0) && (new_instrx.oper != DEFINE))
	{
		struct instrx_struct *instrx = instrxs[instrx_idx - 1];
		if (DEF_NONE == instrx->unit->type)
		{
			set_error(UNDEFINED_UNIT, instrx->unit_line, instrx->unit->name);
		}
		else if ((DEFINE == instrx->oper) && (1 == parent_ptr->num_instrx))
		{
			handle_inheritance(instrx->unit);
		}
		else
		{
			
			if (!instrx->unit->mem_base)
			{
				if ((instrx->ptr_source != NULL) && DEF_NONE == instrx->ptr_source->type)
				{
					instrx->ptr_source = NULL;
					struct unit_struct *unit = instrx->unit;
					instrx->unit = instantiate_unit(basic_units[PTR], NULL);
					instrx->unit->num_subunits = unit->num_subunits;
					instrx->unit->subunits = instantiate_superunit(unit, instrx->unit);
				}
				else
				{
					instrx->unit = instantiate_unit(instrx->unit, NULL);
					if (DO == instrx->unit->type)
					{
						if (instrx->ptr_source != NULL)
						{
							instrx->unit->base = instrx->ptr_source;
							instrx->ptr_source = NULL;
						}
						else
						{
							instrx->unit->base = parent_ptr->base;
						}
					}
					else if ((instrx->unit->do_unit != NULL) && (instrx->oper != DEFINE) && (new_instrx.oper != SUBUNIT))
					{
						instrx->unit->do_unit = instantiate_unit(instrx->unit->do_unit, NULL);
						instrx->unit->do_unit->base = instrx->unit;
						instrx->unit->do_unit->mem_offset += instrx->unit->mem_used;
					}
				}
			}
			if (DEFINE == instrx->oper)
			{
				handle_define_statement(instrxs[instrx_idx - 2]->unit, instrx->unit);
			}
		}
	}
}
void handle_new_instrx()
{
	if ((SUBUNIT == new_instrx.oper) 
			&& ((new_instrx.unit->type != DO) || !instantiated_base || (strlen(new_instrx.unit->name) > 0)))
	{
		if ((DO == new_instrx.unit->type) && (strlen(new_instrx.unit->name) > 0))
		{
			new_instrx.ptr_source = instrxs[instrx_idx - 1]->unit;
			instrxs[instrx_idx - 1]->unit = instrxs[instrx_idx - 1]->unit->do_unit;
		}
		else if (BASE == new_instrx.unit->type)
		{
			instrxs[instrx_idx - 1]->unit = instrxs[instrx_idx - 1]->unit->base;
		}
		else
		{
			instrxs[instrx_idx - 1]->unit = new_instrx.unit;
		}
		instrxs[instrx_idx - 1]->ptr_source = new_instrx.ptr_source;
	}
	else
	{
		if (BASE == new_instrx.unit->type)
		{
			new_instrx.unit = parent_ptr->base;
		}
		else if ((DO == new_instrx.unit->type) && (DO == parent_ptr->type) && (strlen(new_instrx.unit->name) > 0))
		{
			new_instrx.unit = parent_ptr->base->do_unit;
			new_instrx.ptr_source = parent_ptr->base;
		}
		
		instrxs[instrx_idx] = NULL;
		instrxs[instrx_idx] = clone_data(&new_instrx, sizeof(struct instrx_struct));
		if ((INSERTION == new_instrx.oper) || (SUBUNIT == new_instrx.oper))
		{
			instrxs[instrx_idx - 1]->insertion_source = instrxs[instrx_idx];
		}
		else if (WHILE == new_instrx.oper)
		{
			instrxs[instrx_idx - 1]->oper = COND;
		}
		else if ((new_instrx.oper != NO_OPER) && (new_instrx.oper != DEFINE) 
						&& (instrxs[instrx_idx - parent_ptr->num_instrx]->unit->type != DO))
		{
			instrxs[instrx_idx - parent_ptr->num_instrx]->oper = LOAD;
		}
		instrx_idx++;
		parent_ptr->num_instrx++;
	}
	new_instrx.oper = NO_OPER;
	new_instrx.ptr_source = NULL;
	instrxs[instrx_idx - 1]->unit_line = line_num;
}

void handle_unit(struct unit_struct *unit)
{
	new_instrx.unit = unit;
	handle_new_instrx();
}
void handle_superunit()
{
	if (NULL == parent_ptr)
	{
		set_error(UNMATCHED_END_BRACE, line_num, "}");
		return;
	}
	handle_last_instrx();
	parent_ptr->instrx_list = clone_data(&instrxs[instrx_idx - parent_ptr->num_instrx], 
																(parent_ptr->num_instrx * sizeof(struct instrx_struct*)));
	instrx_idx = instrx_idx - parent_ptr->num_instrx;
	
	parent_ptr->subunits = clone_data(parent_ptr->subunits, (parent_ptr->num_subunits * sizeof(struct unit_struct*)));
	start_idx = instrx_idx;
	if (parent_ptr->parent != NULL)
	{
		parent_ptr = parent_ptr->parent;
	}
}

void new_superunit()
{
	struct unit_struct *unit = clone_data(basic_units[STRUCT], sizeof(struct unit_struct));
	if (DEFINE == new_instrx.oper)
	{
		unit->base = parent_ptr;
		if (instantiated_base && (STRUCT == parent_ptr->type))
		{
			unit->base = clone_data(parent_ptr, sizeof(struct unit_struct));
			
			unit->base->mem_base = STRUCT;
			if (instrxs[instrx_idx - 1]->unit->type != DO)
			{
				unit->base->type = PTR;
				unit->mem_used++;
				unit->base->subunits = instantiate_superunit(unit->base, unit->base);
			}
		}
		handle_define_statement(instrxs[instrx_idx - 1]->unit, unit);
		instrxs[instrx_idx - 1]->unit = basic_units[INT];
		new_instrx.oper = NO_OPER;
	}
	else
	{
		unit->type = DO;
		unit->mem_base = DO;
		unit->mem_used = parent_ptr->mem_used;
		if (SUBUNIT == new_instrx.oper)
		{
			handle_last_instrx();
			unit->base = instrxs[instrx_idx - 1]->unit;
			unit->mem_used += instrxs[instrx_idx - 1]->unit->mem_used;
		}
		else if (new_instrx.oper != BRANCH)
		{
			handle_last_instrx();
			unit->mem_used++;
		}
		handle_unit(unit);
	}
	instantiated_base = 1;
	unit->subunits = &parent_ptr->subunits[parent_ptr->num_subunits];
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
		handle_unit(basic_units[DO]);
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
	case '$':
		handle_unit(basic_units[BASE]);
		break;
	case '@':
		new_instrx.ptr_source = basic_units[DEF_NONE];
		break;
	case '\\':
		instantiated_base = 0;
		break;
	default:
		break;
	}
}
void start_base_unit()
{
	parent_ptr = clone_data(basic_units[MAIN], sizeof(struct unit_struct));
	parent_ptr->parent = NULL;
	parent_ptr->type = DO;
	parent_ptr->mem_used += 1;
	parent_ptr->subunits = subunit_stack;
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
		handle_superunit();
	}
}
char *make_unit_name(char *unit_name_chars, int unit_name_size)
{
	char *new_unit_name;
	new_unit_name = malloc(unit_name_size + 1);
	(void)memcpy(new_unit_name, unit_name_chars, unit_name_size);
	return new_unit_name;
}
void handle_unit_name(char *unit_name_chars, int unit_name_size)
{
	new_instrx.unit = NULL;
	if (new_instrx.oper != SUBUNIT)
	{
		handle_last_instrx();
	}
	if ((unit_name_chars[0] >= '0') && (unit_name_chars[0] <= '9'))
	{
		new_instrx.unit = malloc(sizeof(struct unit_struct));
		new_instrx.unit->type = INT_CONST;
		new_instrx.unit->name = make_unit_name(unit_name_chars, unit_name_size);
	}
	else
	{
		new_instrx.unit = find_unit_from_list(basic_units, NUM_BASIC_UNITS, unit_name_chars, unit_name_size);
		if (NULL == new_instrx.unit)
		{
			if (new_instrx.oper != SUBUNIT)
			{
				find_unit_in_parent(unit_name_chars, unit_name_size, parent_ptr);
			}
			else
			{
				find_unit_in_superunit(unit_name_chars, unit_name_size, instrxs[instrx_idx - 1]->unit);
			}
		}
		if (NULL == new_instrx.unit)
		{
			new_instrx.unit = malloc(sizeof(struct unit_struct));
			new_instrx.unit->type = DEF_NONE;
			new_instrx.unit->name = make_unit_name(unit_name_chars, unit_name_size);
		}
	}
	handle_new_instrx();
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
