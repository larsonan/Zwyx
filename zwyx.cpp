#include <stdio.h>
#include <string>
#include <stdlib.h>
#include <vector>
#include <fstream>
#include <sstream>
using namespace std;

#define NO_OPER 0
#define INSERTION 1
#define DEFINE 2
#define SUBUNIT 3
#define BRANCH 4
#define COMPARE 5
#define ADD 6
#define DIVIDE 7
#define COMPARE_NOT 8
#define IGNORE 9
#define SUBTRACT 10
#define PLACE 11
#define ELSE 12
#define WHILE 13
#define MULTIPLY 14
#define MODULUS 15
#define GREATER_THAN_OR_EQUAL 16
#define LESS_THAN_OR_EQUAL 17
#define GREATER_THAN 18
#define LESS_THAN 19
#define AND 20
#define OR 21

#define DEF_NONE 0
#define NAMESPACE 1
#define PTR 2
#define INT 3
#define STRUCT 4
#define METHOD 5
#define METHOD_PTR 6
#define INT_CONST 7
#define BYTES 8
#define COMPTIME_METHOD 9
#define BYTES_PTR 10
#define NAME 11
#define BASE 12
#define IMPORT 13
#define IN 14
#define STRING_LITERAL 15

#define NO_ERROR 0
#define INVALID_USE_OF_OPER 1
#define UNDEFINED_UNIT 2
#define REDEFINED_UNIT 3
#define INVALID_NUMBER_FORMAT 4
#define MISSING_END_BRACE 5
#define UNMATCHED_END_BRACE 6
#define CANNOT_OPEN_FILE 7
#define INVALID_IN_UNIT 8
#define INVALID_USE_OF_IMPORT 9

#define NUM_BASIC_UNITS 16
#define NUM_OPERS 22
#define BASE_UNLOADED -2
#define STRUCT_UNINITIALIZED -1
#define BASE_2_METHOD -4
#define BASE_2_STRUCT -5
#define WORD_SIZE 8
#define MAX_ERRORS 100
#define COMPILED 1
#define COMMENT 2

#define REG_DEFAULT "rsp"
#define REG_TEMP "rax"
#define REG_BASE "rbx"
#define REG_PTR "rcx"
#define REG_COUNT "rdx"
#define REG_TEMP_ONE_BYTE "al"

#define FILE_EXTENSION ".zwyx"
#define FORMAT "elf64"

string error_messages[] = 
{
	"", /* No Error */
	"Invalid use of operator",
	"Undefined unit",
	"Redefinition of unit",
	"Invalid number format",
	"Missing end brace",
	"Unmatched end brace",
	"Cannot open file",
	"Invalid in unit",
	"Invalid use of import"
};

struct Instrx
{
	struct Unit *unit;
	int oper;
	int is_ptr;
	int unit_line;
	int oper_line;
	int base_level;
	int state;
	Instrx *ptr_source;
	Instrx *insertion_source;
};

struct Method
{
	int f_num;
	int mem_base;
	int num_instrx;
	
	Instrx **instrxs;
};

struct Error
{
	int type;
	int line;
	string section;
	string file_name;
};

struct Unit
{
	string name;
	int type;
	int mem_offset;
	int mem_used;
	int mem_base;
	Unit *base;
	vector<Unit*> subunits;
	int f_num;
	Unit *method;
	Unit *parent;
	Unit *typing;
	vector<Instrx*> instrxs;
	Instrx *base_instrx;
	int base_ptr_offset;
	Unit *in_unit;
	string str;
};

string basic_unit_names[] = {"none", "", "", "int", "", "method", "", "", "bytes", "", "", "",
                              "", "_import", "arg", ""};
string operators[] = {"", ":", "~", ".", "?", "=", "+", "/", "!=", "!", "-", "", "^", "?*", "*", "%", 
                ">=", "<=", ">", "<", "&", "|"};

Error errors[MAX_ERRORS];
int num_errors;

Unit *parent_ptr;

Unit basic_unit_data[NUM_BASIC_UNITS];
vector<Unit*> basic_units;

int instrx_idx;

vector<Unit*> funcs;
string compiled_instrxs;

int line_num;

Instrx new_instrx;
FILE* err_out;
FILE* xcfile;
int num_b = 0;
vector<string> data_section_strings;
int num_f = 0;
int temp_reg_mem;
int num_types;
string file_name;

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
	errors[num_errors].file_name = file_name;
	if (num_errors < MAX_ERRORS - 1)
	{
		num_errors++;
	}
}

void print_errors(void)
{
	for (int i = 0; i < num_errors; i++)
	{
	        (void)fprintf(stdout, "%s, ", errors[i].file_name.c_str());
	        if (0 == errors[i].line)
	        {
	                (void)fprintf(stdout, "compile-time method");
	        }
	        else
	        {
		        (void)fprintf(stdout, "line %d", errors[i].line);
		}
		(void)fprintf(stdout, " - \"%s\"", errors[i].section.c_str());
		(void)fprintf(stdout, ": %s\n", error_messages[errors[i].type].c_str());
	}
}

vector<Unit*> instantiate_subunits(Unit *superunit, Unit *mem_ref_parent);
Unit* instantiate_unit(Unit *unit, Unit *base, Unit *mem_ref_parent);
void write_instrxs(vector<Instrx*> instrx);
void write_line_with_control(Instrx *instrx);
void parse_file(string parse_file_name);
void parse_istream(istream &zyfile);
void handle_last_instrx();

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
	basic_units[BYTES_PTR]->mem_used = WORD_SIZE * 2;
	basic_units[INT]->mem_used = WORD_SIZE;
	basic_units[METHOD_PTR]->mem_used = WORD_SIZE * 2;
	
	Unit *count = new Unit(*basic_units[INT]);
	count->name = "count";
	count->mem_base = STRUCT;
	count->mem_used = WORD_SIZE;
	count->mem_offset = WORD_SIZE;
	basic_units[METHOD_PTR]->subunits.push_back(count);
	basic_units[BYTES_PTR]->subunits.push_back(count);
        
        basic_units[IN]->typing = basic_units[COMPTIME_METHOD];
}

void init(void)
{
	instrx_idx = 0;
	num_errors = 0;
	parent_ptr = NULL;
	num_types = NUM_BASIC_UNITS;
	setup_basic_units();
}

void write_unit(Instrx *instrx)
{
	if (INT_CONST == instrx->unit->type)
	{
		(void)fprintf(xcfile, "%s", instrx->unit->name.c_str());
	}
	else
	{
	        if (BASE_2_METHOD == instrx->base_level)
	        {
	                (void)fprintf(xcfile, "[%s-%d]", REG_PTR, instrx->unit->mem_offset);
	        }
		else if (METHOD == instrx->unit->mem_base)
		{
			(void)fprintf(xcfile, "[%s-%d]", REG_DEFAULT, instrx->unit->mem_offset);
		}
		else if (1 == instrx->base_level)
		{
			(void)fprintf(xcfile, "[%s+%d]", REG_BASE, instrx->unit->mem_offset);
		}
		else
		{
			(void)fprintf(xcfile, "[%s+%d]", REG_PTR, instrx->unit->mem_offset);
		}
	}
}

void write_load_ptr_base(Instrx *instrx)
{
	(void)fprintf(xcfile, "mov\t%s,\t", REG_PTR);
	write_unit(instrx);
	(void)fprintf(xcfile, "\n");
}

void write_array_count(Instrx *instrx)
{
        struct Instrx temp = *instrx;
        temp.unit = instrx->unit->subunits[0];
        
        write_unit(&temp);
}

bool is_struct(Unit *unit)
{
        return ((STRUCT == unit->type) || ((unit->type < 1000) && (unit->type >= NUM_BASIC_UNITS)));
}

void write_do(Instrx *instrx)
{
        struct Unit *unit;
        struct Instrx *base_instrx;
        if (is_struct(instrx->unit))
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
	        (void)fprintf(xcfile, "mov\t%s,\t", REG_COUNT);
	        write_array_count(instrx);
	        (void)fprintf(xcfile, "\n");
		(void)fprintf(xcfile, "mov\t%s,\t", REG_TEMP);
		write_unit(instrx);
		(void)fprintf(xcfile, "\n");
	}
	
	if (base_instrx != NULL)
	{
	        if ((is_struct(base_instrx->unit))
	                      && ((base_instrx->unit->mem_base) || (METHOD_PTR == unit->type)))
	        {
	                (void)fprintf(xcfile, "lea\t");
	        }
	        else
	        {
	                (void)fprintf(xcfile, "mov\t");
	        }
	        (void)fprintf(xcfile, "%s,\t", REG_BASE);
	        write_unit(base_instrx);
	        (void)fprintf(xcfile, "\n");
	}
	(void)fprintf(xcfile, "sub\t%s,\t%d\n", REG_DEFAULT, unit->mem_used - WORD_SIZE);
	
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

void write_insertion(Instrx *instrx)
{
	(void)fprintf(xcfile, "mov\t");
	if ((INT_CONST == instrx->insertion_source->unit->type)
	  || (STRING_LITERAL == instrx->insertion_source->unit->type))
	{
		(void)fprintf(xcfile, "qword\t");
	}
	write_unit(instrx);
	(void)fprintf(xcfile, ",\t");
	if (INT_CONST == instrx->insertion_source->unit->type)
	{
		(void)fprintf(xcfile, "%s", instrx->insertion_source->unit->name.c_str());
	}
	else if (STRING_LITERAL == instrx->insertion_source->unit->type)
	{
	        (void)fprintf(xcfile, "s%d", instrx->insertion_source->unit->f_num);
	}
	else if (instrx->unit->mem_used < WORD_SIZE)
	{
	        (void)fprintf(xcfile, "%s", REG_TEMP_ONE_BYTE);
	}
	else
	{
		(void)fprintf(xcfile, "%s", REG_TEMP);
	}
	(void)fprintf(xcfile, "\n");
	
	if ((BYTES_PTR == instrx->unit->type) || (METHOD_PTR == instrx->unit->type))
	{
	        (void)fprintf(xcfile, "mov\t");
	        if ((STRING_LITERAL == instrx->insertion_source->unit->type)
	                      || (BYTES == instrx->insertion_source->unit->type))
	        {
	                (void)fprintf(xcfile, "qword\t");
	        }
	        write_array_count(instrx);
	        (void)fprintf(xcfile, ",\t");
	        if ((STRING_LITERAL == instrx->insertion_source->unit->type)
	                      || (BYTES == instrx->insertion_source->unit->type))
	        {
	                (void)fprintf(xcfile, "%d", instrx->insertion_source->unit->mem_used);
	        }
	        else if ((METHOD_PTR == instrx->unit->type) && (METHOD == instrx->insertion_source->unit->type))
	        {
	                if (METHOD == instrx->insertion_source->unit->parent->type)
	                {
	                        (void)fprintf(xcfile, "%s", REG_DEFAULT);
	                }
	                else
	                {
	                        (void)fprintf(xcfile, "%s", REG_BASE);
	                }
	        }
	        else
	        {
	                (void)fprintf(xcfile, "%s", REG_COUNT);
	        }
	        (void)fprintf(xcfile, "\n");
	}
}

void write_ptr_to_temp(Instrx *instrx)
{
	if (METHOD == instrx->unit->type)
	{
		(void)fprintf(xcfile, "lea\t%s,\t", REG_TEMP);
		(void)fprintf(xcfile, "[rel+f%d]\n", instrx->unit->f_num);
	}
	else
	{
	        if ((is_struct(instrx->unit)) || (BYTES == instrx->unit->type))
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

void load_base_to_temp(Instrx* instrx)
{
        (void)fprintf(xcfile, "mov\t%s,\t[%s+%d]\n", REG_TEMP, REG_BASE, instrx->ptr_source->unit->base_ptr_offset);
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

void store_base(int mem_offset)
{
        (void)fprintf(xcfile, "mov\t[%s-%d],\t%s\n", REG_DEFAULT, mem_offset, REG_BASE);
}

void restore_base_to_reg()
{
	(void)fprintf(xcfile, "mov\t%s,\t[%s]\n", REG_BASE, REG_DEFAULT);
}

void write_insertion_src(Instrx *instrx)
{
        if (instrx->unit->mem_used < WORD_SIZE)
        {
                (void)fprintf(xcfile, "mov\t%s,\t", REG_TEMP_ONE_BYTE);
        }
        else
        {
	        (void)fprintf(xcfile, "mov\t%s,\t", REG_TEMP);
	}
	write_unit(instrx);
	(void)fprintf(xcfile, "\n");
	
	if ((BYTES_PTR == instrx->unit->type) || (METHOD_PTR == instrx->unit->type))
	{
	        (void)fprintf(xcfile, "mov\t%s,\t", REG_COUNT);
	        write_array_count(instrx);
	        
	        (void)fprintf(xcfile, "\n");
	}
}

void write_math_instrx(Instrx *instrx)
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
		(void)fprintf(xcfile, "div\tqword\t");
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
	case AND:
	        (void)fprintf(xcfile, "and\t%s,\t", REG_TEMP);
	        break;
	case OR:
	        (void)fprintf(xcfile, "or\t%s,\t", REG_TEMP);
	        break;
	case COMPARE:
	case COMPARE_NOT:
	case LESS_THAN_OR_EQUAL:
	case GREATER_THAN_OR_EQUAL:
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
	
	if (MODULUS == instrx->oper)
	{
	        (void)fprintf(xcfile, "mov\t%s,\trdx\n", REG_TEMP);
	}
	
	switch (instrx->oper)
	{
		case COMPARE:
		        (void)fprintf(xcfile, "sete\tal\nmovzx\t%s,\tal\n", REG_TEMP);
		        break;
		case GREATER_THAN_OR_EQUAL:
		        (void)fprintf(xcfile, "setge\tal\nmovzx\t%s,\tal\n", REG_TEMP);
		        break;
		case LESS_THAN_OR_EQUAL:
		        (void)fprintf(xcfile, "setle\tal\nmovzx\t%s,\tal\n", REG_TEMP);
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

void decrease_base_level(int base_level, Unit* base)
{
        (void)fprintf(xcfile, "mov\t%s,\t[%s+%d]\n", REG_PTR, REG_BASE, base->base_ptr_offset);
        for (int i = 2; i < base_level; i++)
        {
                base = base->parent;
                (void)fprintf(xcfile, "mov\t%s,\t[%s+%d]\n", REG_PTR, REG_PTR, base->base_ptr_offset);
        }
}

void load_base_2()
{
        (void)fprintf(xcfile, "mov\t%s,\t[%s+%d]\n", REG_PTR, REG_DEFAULT, WORD_SIZE);
}

void load_pointer_base(Instrx *instrx)
{
        if (instrx->base_level > 1)
        {
                decrease_base_level(instrx->base_level, instrx->ptr_source->unit);
        }
        else if ((instrx->ptr_source != NULL) && (instrx->unit->mem_base != METHOD))
        {
                load_pointer_base(instrx->ptr_source);
        }
        write_load_ptr_base(instrx);
}

void load_base(Instrx *instrx)
{
        if (instrx->base_level > 1)
        {
                load_base_to_temp(instrx);
        }
        else if (1 == instrx->base_level)
        {
                store_base(instrx->unit->mem_offset);
        }
        else
        {
                if (instrx->ptr_source->base_level > 1)
                {
                        decrease_base_level(2, instrx->ptr_source->ptr_source->unit);
                }
                write_ptr_to_temp(instrx->ptr_source);
	}
	if (instrx->base_level != 1)
	{
	        store_temp(instrx->unit->mem_offset - instrx->unit->base_ptr_offset);
	}
}

void write_do_instrx(Instrx *instrx)
{
	if ((METHOD == instrx->unit->type) || ((METHOD_PTR == instrx->unit->type)
			      && (NULL == instrx->insertion_source) && (instrx->oper != INSERTION)))
	{
		if ((METHOD == instrx->unit->type) && (0 == instrx->unit->name.length()))
		{
			write_instrxs(instrx->unit->instrxs);
		}
		else
		{
			write_do(instrx);
		}
	}
	else if (is_struct(instrx->unit) && (instrx->unit->method != NULL) && (instrx->unit->method->mem_base))
	{
		write_do(instrx);
	}
}

struct Unit* in_unit(Unit *unit)
{
        if ((is_struct(unit)) && (unit->subunits.size() > 0))
        {
                if (unit->in_unit != NULL)
                {
                        return in_unit(unit->in_unit);
                }
                return in_unit(unit->subunits[0]);
        }
        else
        {
                return unit;
        }
}

void write_insertion_src_out_unit(Instrx *instrx)
{
        struct Instrx temp = *instrx;
        temp.unit = in_unit(temp.unit);
        write_insertion_src(&temp);
}

void handle_instrx_default(Instrx *instrx)
{
	if (instrx->is_ptr)
	{
		write_ptr_to_temp(instrx);
	}
	else if ((is_struct(instrx->unit) && (instrx->unit->method != NULL)) || (METHOD == instrx->unit->type)
		|| ((METHOD_PTR == instrx->unit->type) && (instrx->oper != INSERTION)))
	{
		write_do_instrx(instrx);
	}
	else if ((instrx->unit->type != METHOD) && ((instrx->oper != NO_OPER) || (NULL == instrx->insertion_source))
		&& ((instrx->oper != INSERTION)
		|| ((instrx->unit->type != INT_CONST) && (instrx->unit->type != STRING_LITERAL))))
	{
		write_insertion_src_out_unit(instrx);
	}
}

int get_temp_offset(Unit *unit)
{
	int result;
	if (is_struct(unit))
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

void handle_math_oper(Instrx *instrx)
{
	if ((is_struct(instrx->unit)) || (METHOD == instrx->unit->type) || (METHOD_PTR == instrx->unit->type))
	{
		write_do_instrx(instrx);
		int temp_offset = get_temp_offset(instrx->unit);
		store_temp(temp_offset + WORD_SIZE);
		get_stored_temp(temp_offset);
	}
	write_math_instrx(instrx);
}

bool is_default_instrx(Instrx *instrx)
{
	return ((INSERTION == instrx->oper) || (NO_OPER == instrx->oper) || (SUBUNIT == instrx->oper)
	      || (WHILE == instrx->oper) || (ELSE == instrx->oper) || (BRANCH == instrx->oper));
}

void initialize_unit(Instrx *instrx)
{
        Unit *unit = instrx->unit;
	if (((METHOD == unit->type) && (unit->f_num <= 0)) || is_struct(unit))
	{
		if ((unit->base != NULL) && (is_struct(unit->base) || (PTR == unit->base->type)))
		{
			if (STRUCT_UNINITIALIZED == instrx->state)
			{
				load_base(instrx);
			}
			if ((instrx->ptr_source != NULL) && (instrx->ptr_source->unit != NULL))
			{
			        initialize_unit(instrx->ptr_source);
			}
		}
		if ((STRUCT_UNINITIALIZED == instrx->state) && (STRUCT_UNINITIALIZED == unit->f_num))
		{
			load_base_to_reg(unit->mem_offset);
			write_instrxs(unit->instrxs);
			
			restore_base_to_reg();
		}
	}
}

void write_insertion_in_unit(Instrx *instrx)
{
        struct Instrx temp = *instrx;
        temp.unit = in_unit(temp.unit);
        write_insertion(&temp);
}

void write_line(Instrx *instrx)
{
	if (!is_default_instrx(instrx) && (instrx->oper != DEFINE)
	  && (is_struct(instrx->unit) || (METHOD == instrx->unit->type) || (METHOD_PTR == instrx->unit->type)))
	{
		store_temp(get_temp_offset(instrx->unit));
	}
	if ((instrx->insertion_source != NULL) 
	  && ((INSERTION == instrx->insertion_source->oper) || (SUBUNIT == instrx->insertion_source->oper)))
	{
		write_line(instrx->insertion_source);
	}
	if ((BASE_2_STRUCT == instrx->base_level) || (BASE_2_METHOD == instrx->base_level))
	{
	        load_base_2();
	}
	if ((instrx->base_level > 1) && (instrx->unit->mem_base != METHOD))
	{
	        decrease_base_level(instrx->base_level, instrx->ptr_source->unit);
	}
	else if ((instrx->ptr_source != NULL) && instrx->unit->mem_base && (instrx->unit->mem_base != METHOD))
	{
	        load_pointer_base(instrx->ptr_source);
	}
	if ((instrx->insertion_source != NULL) && (INSERTION == instrx->insertion_source->oper))
	{
		write_insertion_in_unit(instrx);
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

void write_line_with_branch(Instrx* instrx)
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

void write_line_with_while(Instrx* instrx)
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

void write_line_with_control(Instrx* instrx)
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

void write_instrxs(vector<Instrx*> instrxs)
{
	for (int i = 0; i < instrxs.size(); i++)
	{
		if ((instrxs[i]->oper != INSERTION) && (instrxs[i]->oper != WHILE) && (instrxs[i]->oper != SUBUNIT)
		  && (instrxs[i]->oper != ELSE) && (instrxs[i]->oper != BRANCH) && (instrxs[i]->oper != IGNORE))
		{
			write_line_with_control(instrxs[i]);
		}
	}
}

void write_f(void)
{
	for (int i = 0; i < funcs.size(); i++)
	{
		(void)fprintf(xcfile, "f%d:\n", funcs[i]->f_num);
		if (METHOD_PTR == funcs[i]->mem_base)
		{
		        (void)fprintf(xcfile, "push\t%s\n", REG_COUNT);
		}
		(void)fprintf(xcfile, "push\t%s\n", REG_BASE);
		write_instrxs(funcs[i]->instrxs);
		(void)fprintf(xcfile, "pop\t%s\n", REG_BASE);
		if (METHOD_PTR == funcs[i]->mem_base)
		{
		        (void)fprintf(xcfile, "pop\t%s\n", REG_COUNT);
		}
		(void)fprintf(xcfile, "ret\n");
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
	
	write_instrxs(parent_ptr->method->instrxs);
	
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
	
	(void)fprintf(xcfile, "SECTION .data\n");
	
	for (int i = 0; i < data_section_strings.size(); i++)
	{
	        (void)fprintf(xcfile, "s%d\tdb\t'%s'\n", i+1, data_section_strings[i].c_str());
	}
	fclose(xcfile);
}

Unit *find_unit_from_list(vector<Unit*> unit_list, string name)
{
	Unit *unit_match = NULL;
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

Unit *find_unit_in_superunit(string name, Unit *superunit)
{
        Unit *unit = find_unit_from_list(superunit->subunits, name);
        if ((NULL == unit) && (superunit->typing != NULL))
        {
                unit = find_unit_from_list(superunit->typing->subunits, name);
        }
        return unit;
}

void handle_inheritance(Unit *unit)
{
        if (!is_struct(parent_ptr) || !is_struct(unit))
        {
                set_error(INVALID_USE_OF_OPER, line_num, operators[DEFINE]);
        }
	parent_ptr->mem_used = unit->mem_used;
	parent_ptr->subunits = unit->subunits;
	parent_ptr->in_unit = unit->in_unit;
	parent_ptr->typing = unit;
	if (is_struct(parent_ptr->parent) && !is_struct(unit->parent))
	{
	        parent_ptr->base_ptr_offset = parent_ptr->mem_used;
	        parent_ptr->mem_used += WORD_SIZE;
	}
	if (unit->method != NULL)
	{
		parent_ptr->method = unit->method;
	}
	for (int i = 0; i < parent_ptr->subunits.size(); i++)
	{
	        if ((METHOD_PTR == parent_ptr->subunits[i]->type) && (parent_ptr->subunits[i]->base_instrx != NULL))
	        {
	                parent_ptr->subunits[i] = new Unit(*parent_ptr->subunits[i]);
	                parent_ptr->subunits[i]->base = parent_ptr;
	        }
	}
}

void handle_new_method(Unit *unit)
{
	funcs.push_back(unit);
	unit->f_num = num_f;
	
	num_f++;
}

int handle_alignment(int mem_offset)
{
        if ((mem_offset % WORD_SIZE) != 0)
        {
                return mem_offset / WORD_SIZE * WORD_SIZE + WORD_SIZE;
        }
        return mem_offset;
}

void handle_define_statement(Unit *defined_unit, Unit *definition_unit)
{
	definition_unit->name = defined_unit->name;
	if ((STRUCT == definition_unit->mem_base) || (METHOD == definition_unit->mem_base))
	{
		parent_ptr->mem_used += handle_alignment(definition_unit->mem_used);
	}
	parent_ptr->subunits.push_back(definition_unit);
}

Unit* instantiate_unit(Unit *unit, Unit *base, Unit *mem_ref_parent)
{
	Unit *instance = new Unit;
	*instance = *unit;
	instance->mem_base = mem_ref_parent->type;
	if ((METHOD_PTR == mem_ref_parent->type) || (BYTES_PTR == mem_ref_parent->type)
	    || is_struct(mem_ref_parent))
	{
	        instance->mem_base = STRUCT;
	}
	if ((INT_CONST == instance->type) && (instance->mem_used > 0))
	{
	        instance->type = BYTES;
	}
	if (((METHOD_PTR == instance->type) || (BYTES_PTR == instance->type)
	    || (BYTES == instance->type) || is_struct(instance))
	    && (METHOD == mem_ref_parent->type))
	{
		if ((base != NULL) && (METHOD == base->mem_base) && (base->mem_offset >= mem_ref_parent->mem_used))
		{
			instance->mem_offset = base->mem_offset + instance->mem_used;
		}
		else
		{
			instance->mem_offset = temp_reg_mem + mem_ref_parent->mem_used
			                                            + instance->mem_used - WORD_SIZE;
		}
		mem_ref_parent = instance;
	}
	else if (((METHOD_PTR == mem_ref_parent->type) || (BYTES_PTR == mem_ref_parent->type)
	        || is_struct(mem_ref_parent)) && (METHOD == mem_ref_parent->mem_base))
	{
	        instance->mem_base = METHOD;
	        instance->mem_offset = mem_ref_parent->mem_offset - instance->mem_offset;
	}
	else
	{
		instance->mem_offset += mem_ref_parent->mem_used + temp_reg_mem;
	}
	if ((METHOD_PTR == instance->type) && !mem_ref_parent->mem_base)
	{
	        instance->base = parent_ptr;
	}
	if (base != NULL)
	{
		instance->base = base;
	}
	else if (METHOD_PTR == instance->type)
	{
	        instance->base_instrx = new Instrx;
	}
	if (instance->in_unit != NULL)
	{
	        instance->in_unit = instantiate_unit(instance->in_unit, base, mem_ref_parent);
	}
	if ((METHOD_PTR == instance->type) || (BYTES_PTR == instance->type) || is_struct(instance))
	{
		instance->subunits = instantiate_subunits(instance, mem_ref_parent);
	}
	return instance;
}

void instantiate_method(Instrx *instrx)
{
	instrx->unit = new Unit(*instrx->unit);
	instrx->unit->mem_used = parent_ptr->mem_used;
	
	if (METHOD == instrx->unit->type)
	{
		instrx->unit->base_instrx = instrx->ptr_source;
	}
	else
	{
	        Unit* superunit = parent_ptr;
	        while (METHOD == superunit->type)
	        {
	                if (superunit->base_instrx != NULL)
	                {
	                        instrx->unit->base_instrx = superunit->base_instrx;
	                        break;
	                }
	                if (superunit->mem_base != METHOD)
	                {
	                        instrx->unit->base_instrx = new Instrx;
	                        instrx->unit->base_instrx->base_level = 1;
	                        instrx->unit->base_instrx->unit = superunit->base;
	                        break;
	                }
	                superunit = superunit->parent;
	        }
	}
}

void instantiate_unit_method(Instrx *instrx)
{
	instrx->unit->method = new Unit(*instrx->unit->method);
	instrx->unit->method->mem_used = instrx->unit->mem_offset + WORD_SIZE;
	instrx->unit->method->base = instrx->unit;
	instrx->unit->method->mem_base = METHOD;
}

Unit* instantiate_as_ptr(Unit *unit)
{
        Unit *new_ptr;
        if (BYTES == unit->type)
        {
                new_ptr = instantiate_unit(basic_units[BYTES_PTR], NULL, parent_ptr);
        }
        else
        {
	        new_ptr = instantiate_unit(basic_units[PTR], NULL, parent_ptr);
	        new_ptr->typing = unit;
	}
	
	return new_ptr;
}

vector<Unit*> instantiate_subunits(Unit *superunit, Unit *mem_ref_parent)
{
	vector<Unit*> units;
	
	for (int i = 0; i < superunit->subunits.size(); i++)
	{
		if (STRUCT == superunit->subunits[i]->mem_base)
		{
			units.push_back(instantiate_unit(superunit->subunits[i], NULL, mem_ref_parent));
		}
	}
	return units;
}

bool is_comptime_method(Unit* unit)
{
        return ((COMPTIME_METHOD == unit->type)
                || ((unit->typing != NULL) && (COMPTIME_METHOD == unit->typing->type)));
}

void handle_instantiation(Instrx *instrx)
{
	if (((METHOD_PTR == instrx->unit->type) && instrx->unit->mem_base && (new_instrx.oper != INSERTION))
		|| ((METHOD == instrx->unit->type) && !instrx->unit->mem_base))
	{
		instantiate_method(instrx);
	}
	else if (STRING_LITERAL == instrx->unit->type)
	{
	        data_section_strings.push_back(instrx->unit->name);
	        int size;
	        int sizes;
	        size = data_section_strings.size();
	        instrx->unit->f_num = size;
	}
	else if (!instrx->unit->mem_base && (instrx->unit->type != IMPORT) && (instrx->unit->type != IN)
	                    && (instrx->oper != IGNORE) && !is_comptime_method(instrx->unit))
	{
		if (instrx->is_ptr)
		{
			instrx->unit = instantiate_as_ptr(instrx->unit);
		}
		else
		{
		        Unit *base = NULL;
		        if (instrx->ptr_source != NULL)
		        {
		                base = instrx->ptr_source->unit;
		        }
		        Unit *typing = instrx->unit;
			instrx->unit = instantiate_unit(instrx->unit, base, parent_ptr);
			if (is_struct(typing))
			{
			        instrx->unit->typing = typing;
			}
			if (is_struct(parent_ptr))
			{
			        instrx->base_level = 1;
			}
			if (is_struct(instrx->unit))
			{
			        instrx->state = STRUCT_UNINITIALIZED;
			}
			if ((instrx->unit->method != NULL) && (instrx->oper != DEFINE) && (new_instrx.oper != SUBUNIT))
			{
				instantiate_unit_method(instrx);
			}
		}
	}
}

void id_unit(string name)
{
	Unit *superunit = parent_ptr;
	while ((NULL == new_instrx.unit) && (superunit != NULL) && (METHOD == superunit->type))
	{
		new_instrx.unit = find_unit_in_superunit(name, superunit);
		if (METHOD == superunit->mem_base)
		{
		        superunit = superunit->parent;
		}
		else
		{
		        if ((METHOD_PTR == superunit->mem_base) && (NULL == new_instrx.unit))
		        {
		                new_instrx.unit = find_unit_in_superunit(name, superunit->parent);
		                if ((new_instrx.unit != NULL) && new_instrx.unit->mem_base)
		                {
		                        if (is_struct(superunit->parent))
		                        {
		                                new_instrx.base_level = BASE_2_STRUCT;
		                        }
		                        else
		                        {
		                                new_instrx.base_level = BASE_2_METHOD;
		                        }
		                        return;
		                }
		        }
		        superunit = superunit->base;
		}
	}
	int base_level = 0;
	Unit* superunit_level_1 = superunit;
	while ((NULL == new_instrx.unit) && (superunit != NULL))
	{
		new_instrx.unit = find_unit_in_superunit(name, superunit);
		superunit = superunit->parent;
		base_level++;
	}
	if ((new_instrx.unit != NULL) && (superunit != NULL))
	{
	        new_instrx.base_level = base_level;
	        if (is_struct(parent_ptr))
	        {
	                new_instrx.base_level = 1;
	        }
	        if (new_instrx.base_level > 1)
	        {
	                new_instrx.ptr_source = new Instrx;
	                new_instrx.ptr_source->unit = superunit_level_1;
	        }
	}
	superunit = parent_ptr;
	
	while ((NULL == new_instrx.unit) && (superunit != NULL) && (METHOD == superunit->mem_base))
	{
	        if ((superunit->base_instrx != NULL) && (superunit->base_instrx->unit != NULL))
	        {
		        new_instrx.unit = find_unit_in_superunit(name, superunit->base_instrx->unit);
                        if ((new_instrx.unit != NULL) && ((new_instrx.unit->base != NULL)
                            || (PTR == superunit->base_instrx->unit->type)))
                        {
                                new_instrx.ptr_source = superunit->base_instrx;
                        }
		}
		superunit = superunit->parent;
	}
	
}

Instrx* get_second_last_instrx()
{
        if (parent_ptr->instrxs.size() > 1)
        {
                return parent_ptr->instrxs[parent_ptr->instrxs.size() - 2];
        }
        else
        {
                return NULL;
        }
}

void handle_base(Instrx *instrx, int base_level)
{
        Unit *superunit = parent_ptr;
        while (superunit != NULL)
        {
                if ((superunit->base_instrx != NULL) && (superunit->base_instrx->unit != NULL))
                {
                        instrx->unit = superunit->base_instrx->unit;
                        instrx->base_level = superunit->base_instrx->base_level;
                        if (1 == base_level)
                        {
                                break;
                        }
                        else
                        {
                                base_level--;
                        }
                }
                superunit = superunit->parent;
        }
}

void handle_base_no_index(Instrx* instrx)
{
        handle_base(instrx, 1);
}

void handle_custom_compile_time_method(Instrx* method_struct, Instrx *arg)
{
        Unit *parent = new Unit(*basic_units[STRUCT]);
        parent->parent = parent_ptr;
        parent->typing = NULL;
        parent->base_instrx = arg;
        parent->type = STRUCT;
        parent_ptr = parent;
        Instrx temp = new_instrx;
        new_instrx.unit = NULL;
        new_instrx.oper = NO_OPER;
        int temp_temp_reg_mem = temp_reg_mem;
        istringstream str(method_struct->unit->str);
        int outer_line_num = line_num;
        line_num = 0;
        parse_istream(str);
        handle_last_instrx();
        parent_ptr = parent->parent;
        line_num = outer_line_num;
        arg->unit = parent;
        new_instrx = temp;
        temp_reg_mem = temp_temp_reg_mem;
}

void handle_in(Instrx* instrx)
{
        handle_instantiation(instrx);
        parent_ptr->in_unit = instrx->unit;
}

void handle_compile_time_method(Instrx* method_struct, Instrx* arg)
{
        int method_struct_type = method_struct->unit->type;
        if (IN == method_struct->unit->type)
        {
                handle_in(arg);
        }
        else
        {
                handle_custom_compile_time_method(method_struct, arg);
        }
        arg->oper = method_struct->oper;
        arg->is_ptr = method_struct->is_ptr;
        parent_ptr->instrxs.pop_back();
        delete(parent_ptr->instrxs.back());
        parent_ptr->instrxs.pop_back();
        parent_ptr->instrxs.push_back(arg);
}

bool check_types(Instrx* src, Instrx* dst)
{
        int dstt = in_unit(dst->unit)->type;
        int srct = in_unit(src->unit)->type;
        if (src->is_ptr)
        {
                srct = src->unit->type;
        }
        if ((BYTES_PTR == srct) || (BYTES_PTR == dstt) || (BYTES == srct)
            || (METHOD == srct) || (is_struct(src->unit) && !src->is_ptr && (src->unit->method != NULL)))
        {
                return true;
        }
        if (PTR == dstt)
        {
                if ((srct != PTR) && !src->is_ptr)
                {
                        return false;
                }
                Unit* dst_typing = in_unit(dst->unit)->typing;
                Unit* src_typing = in_unit(src->unit)->typing;
                if (src->is_ptr)
                {
                        src_typing = src->unit->typing;
                }
                while (src_typing != NULL)
                {
                        if (src_typing->type == dst_typing->type)
                        {
                                return true;
                        }
                        src_typing = src_typing->typing;
                }
                return false;
        }
        if ((!src->unit->mem_base && src->is_ptr)
            || (METHOD == dstt)
            || ((INT == dstt) && (srct != INT) && (srct != INT_CONST))
            || ((METHOD_PTR == dstt) && (srct != METHOD_PTR) && (srct != METHOD)))
        {
               return false;
        }
        return true;
}

void handle_last_instrx()
{
	if ((parent_ptr->instrxs.size() > 0) && (new_instrx.oper != DEFINE))
	{
		Instrx *instrx = parent_ptr->instrxs.back();
		if (NULL == instrx->unit)
		{
		        set_error(INVALID_USE_OF_OPER, instrx->unit_line, operators[instrx->oper]);
		}
		else if ((DEF_NONE == instrx->unit->type) && (instrx->oper != IGNORE)
		          && (new_instrx.oper != DEFINE))
		{
			set_error(UNDEFINED_UNIT, instrx->unit_line, instrx->unit->name);
		}
		else if ((INT_CONST == instrx->unit->type) && (INSERTION == new_instrx.oper))
		{
		        set_error(INVALID_USE_OF_OPER, instrx->unit_line, ":");
		}
		else if (instrx->unit->type != DEF_NONE)
		{
		        if (BASE == instrx->unit->type)
		        {
		                handle_base_no_index(instrx);
		        }
		        Instrx* second_last_instrx = get_second_last_instrx();
			if (INSERTION == instrx->oper)
			{
			        if (is_comptime_method(second_last_instrx->unit))
			        {
			                handle_compile_time_method(second_last_instrx, instrx);
			                second_last_instrx = get_second_last_instrx();
			        }
			        else if (!check_types(instrx, second_last_instrx))
			        {
			                set_error(INVALID_USE_OF_OPER, instrx->unit_line, operators[INSERTION]);
			        }
			}
			if ((DEFINE == instrx->oper) && (NULL == second_last_instrx)
			    && !is_comptime_method(instrx->unit))
			{
			        handle_inheritance(instrx->unit);
			}
			else if ((instrx->unit->type != INT_CONST) || (DEFINE == instrx->oper))
			{
			        handle_instantiation(instrx);
			        if ((DEFINE == instrx->oper)
			                && (!is_comptime_method(instrx->unit) || (INSERTION != new_instrx.oper)))
			        {
			        	handle_define_statement(second_last_instrx->unit, instrx->unit);
			          	second_last_instrx->oper = IGNORE;
			        	if ((instrx->unit->f_num != STRUCT_UNINITIALIZED)
			        	    && (new_instrx.oper != INSERTION) && (new_instrx.oper != SUBUNIT))
			        	{
			        	        instrx->oper = IGNORE;
			        	}
			        }
			}
		}
	}
}

Unit *get_correct_method_type()
{
	if ((DEFINE == new_instrx.oper) || (SUBUNIT == new_instrx.oper))
	{
		return basic_units[METHOD_PTR];
	}
	
	if (is_struct(parent_ptr))
	{
	        return basic_units[METHOD];
	}
	
	Unit* superunit = parent_ptr;
	while (METHOD == superunit->type)
	{
	        if ((superunit->base != NULL) && (METHOD == superunit->base->type))
	        {
	                return basic_units[METHOD_PTR];
	        }
	        if (METHOD_PTR == superunit->mem_base)
	        {
	                return superunit->base->method;
	        }
		if (!superunit->mem_base)
		{
		        new_instrx.ptr_source = new Instrx;
		        new_instrx.ptr_source->unit = superunit;
		        new_instrx.ptr_source->base_level = 1;
			return superunit->base->base->method;
		}
		if (superunit->base_instrx != NULL)
		{
		        new_instrx.ptr_source = superunit->base_instrx;
			return superunit->base_instrx->unit->method;
		}
		superunit = superunit->parent;
	}
	
	return basic_units[METHOD];
}

void handle_oper_errors()
{
        if (((PTR == new_instrx.unit->type) && (new_instrx.oper != NO_OPER)
            && (new_instrx.oper != DEFINE) && (new_instrx.oper != SUBUNIT)
            && (new_instrx.oper != INSERTION))
            || (new_instrx.unit->mem_base && (DEFINE == new_instrx.oper))
            || ((IMPORT == new_instrx.unit->type) && (new_instrx.oper != NO_OPER))
            || ((INT_CONST == new_instrx.unit->type) && (DEFINE == new_instrx.oper)))
        {
                set_error(INVALID_USE_OF_OPER, line_num, operators[new_instrx.oper]);
        }
}

void handle_subunit()
{
        if ((1 == parent_ptr->instrxs.size()) && (DEFINE == parent_ptr->instrxs.back()->oper))
	{
	        set_error(INVALID_USE_OF_OPER, line_num, operators[SUBUNIT]);
	}
	if ((BASE == parent_ptr->instrxs.back()->unit->type) && (new_instrx.unit->type != INT_CONST))
	{
	        handle_base(parent_ptr->instrxs.back(), 1);
	}
	if ((new_instrx.unit->type != METHOD_PTR) && (new_instrx.unit->type != INT_CONST)
	    && (parent_ptr->instrxs.back()->unit->type != BASE))
	{
		handle_instantiation(parent_ptr->instrxs.back());
	}
	if ((METHOD == new_instrx.unit->type) && (DEFINE == parent_ptr->instrxs.back()->oper))
	{
		parent_ptr->instrxs.back()->oper = NO_OPER;
	}
	if ((PTR == parent_ptr->instrxs.back()->unit->type) || (METHOD == new_instrx.unit->type)
	    || (!new_instrx.unit->mem_base && (new_instrx.unit->type != INT_CONST)))
	{
		parent_ptr->instrxs.back()->ptr_source = 
		                                        new Instrx(*parent_ptr->instrxs.back());
		        
		parent_ptr->instrxs.back()->ptr_source->oper = NO_OPER;
		parent_ptr->instrxs.back()->base_level = 0;
	}
	parent_ptr->instrxs.back()->state = 0;
	parent_ptr->instrxs.back()->unit = new_instrx.unit;
}

void handle_new_instrx()
{
        handle_oper_errors();
        if ((BYTES == new_instrx.unit->type) && (!new_instrx.unit->mem_base))
        {
                new_instrx.unit = basic_units[BYTES_PTR];
        }
	if (SUBUNIT == new_instrx.oper)
	{
		handle_subunit();
	}
	else if ((parent_ptr->instrxs.size() > 0) && (parent_ptr->instrxs.back()->oper != IGNORE)
	          && (IMPORT == parent_ptr->instrxs.back()->unit->type))
	{
	        if (new_instrx.oper != INSERTION)
	        {
	                set_error(INVALID_USE_OF_IMPORT, line_num, basic_units[IMPORT]->name);
	        }
	        else
	        {
	                parent_ptr->instrxs.back()->oper = IGNORE;
	                parse_file(new_instrx.unit->name + ".zwyx");
	        }
	}
	else
	{
	        Instrx *temp = new Instrx(new_instrx);
		
		if ((INSERTION == new_instrx.oper) || (SUBUNIT == new_instrx.oper)
		    || (WHILE == new_instrx.oper) || (ELSE == new_instrx.oper) || (BRANCH == new_instrx.oper))
		{
			parent_ptr->instrxs.back()->insertion_source = temp;
		}
		
		if (!is_default_instrx(&new_instrx) && new_instrx.oper != DEFINE)
		{
			temp_reg_mem = WORD_SIZE;
		}
		else
		{
			temp_reg_mem = 0;
		}
		parent_ptr->instrxs.push_back(temp);
	}
	new_instrx.oper = NO_OPER;
	new_instrx.base_level = 0;
	new_instrx.is_ptr = 0;
	new_instrx.ptr_source = NULL;
	new_instrx.unit = NULL;
	parent_ptr->instrxs.back()->unit_line = line_num;
}

void handle_unit(Unit *unit)
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
	
	if (parent_ptr->parent != NULL)
	{
		parent_ptr = parent_ptr->parent;
	}
}

void handle_new_superunit()
{
	Unit *unit = new Unit;
	*unit = *basic_units[STRUCT];
	
	if (DEFINE == new_instrx.oper)
	{
		unit->base = parent_ptr;
		if (parent_ptr->instrxs.back()->unit->type != METHOD)
		{
		        unit->type = num_types;
		        num_types++;
		}
		if (is_struct(parent_ptr))
		{
		        unit->base_ptr_offset = 0;
			unit->mem_used += WORD_SIZE;
		}
	        if (METHOD == parent_ptr->instrxs.back()->unit->type)
		{
		        unit->type = METHOD;
		        if (NAMESPACE == parent_ptr->type)
		        {
		                unit->mem_used += WORD_SIZE;
		        }
		        else
		        {
		                handle_new_method(unit);
		        }
			parent_ptr->method = unit;
	        }
		handle_define_statement(parent_ptr->instrxs.back()->unit, unit);
		parent_ptr->instrxs.back()->oper = IGNORE;
		new_instrx.oper = NO_OPER;
	}
	else
	{
	        handle_last_instrx();
		unit->type = METHOD;
		unit->mem_base = METHOD;
		unit->mem_used = parent_ptr->mem_used;
		if (SUBUNIT == new_instrx.oper)
		{
			unit->base_instrx = new Instrx(*parent_ptr->instrxs.back());
			unit->base_instrx->state = 0;
			unit->base = parent_ptr->instrxs.back()->unit;
			if ((parent_ptr->instrxs.back()->unit->mem_offset >= parent_ptr->mem_used)
			    && (METHOD == parent_ptr->instrxs.back()->unit->mem_base))
			{
			        unit->mem_used += handle_alignment(parent_ptr->instrxs.back()->unit->mem_used);
			}
		}
		else if (new_instrx.is_ptr)
		{
		        unit->base = in_unit(parent_ptr->instrxs.back()->unit)->base;
			unit->mem_base = METHOD_PTR;
			handle_new_method(unit);
			unit->mem_used = WORD_SIZE;
			unit->typing = basic_units[METHOD_PTR];
		}
		handle_unit(unit);
		unit->mem_used += temp_reg_mem;
		unit->mem_offset = unit->mem_used;
	}
	
	unit->parent = parent_ptr;
	parent_ptr = unit;
}

void handle_ptr()
{
        new_instrx.is_ptr = 1;
        if ((new_instrx.oper != DEFINE) && (new_instrx.oper != INSERTION))
        {
                set_error(INVALID_USE_OF_OPER, line_num, operators[new_instrx.oper]);
        }
}

void handle_new_oper(int oper)
{
        if (new_instrx.is_ptr || ((oper != DEFINE) && (0 == parent_ptr->instrxs.size())))
	{
	        set_error(INVALID_USE_OF_OPER, line_num, operators[oper]);
	}
	if ((INSERTION == oper) && (is_struct(parent_ptr))
	  && (parent_ptr->instrxs.back()->unit->type != COMPTIME_METHOD))
	{
	        parent_ptr->f_num = STRUCT_UNINITIALIZED;
	}
	if (new_instrx.oper != NO_OPER)
	{
                string operator_str = operators[new_instrx.oper] + operators[oper];
                int new_oper = NO_OPER;
                
	        for (int i = 0; i <= 22; i++)
	        {
	                if (operator_str == operators[i])
	                {
	                        new_oper = i;
	                        break;
	                }
	        }
	        if (NO_OPER == new_oper)
	        {
	                set_error(INVALID_USE_OF_OPER, line_num, operators[new_oper]);
	        }
	        oper = new_oper;
	        
	}
	new_instrx.oper = oper;
}

void handle_char(int c)
{
        if ((' ' == c) || ('\t' == c))
        {
                return;
        }
        if ('\n' == c)
        {
                if (line_num > 0)
                {
                        line_num++;
                }
                return;
        }
        int new_oper = NO_OPER;
	for (int i = 0; i <= 22; i++)
	{
		if ((1 == operators[i].size()) && (c == operators[i][0]))
		{
			handle_new_oper(i);
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
	case '$':
		handle_unit(basic_units[BASE]);
		break;
	case '@':
		handle_ptr();
		break;
	default:
		break;
	}
}

void start_base_unit()
{
	parent_ptr = new Unit;
	*parent_ptr = *basic_units[NAMESPACE];
	parent_ptr->base = NULL;
	parent_ptr->parent = NULL;
	parent_ptr->mem_used += WORD_SIZE;
	
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

void handle_int_const(string str)
{
        if ((SUBUNIT == new_instrx.oper) && (BASE == parent_ptr->instrxs.back()->unit->type))
        {
                handle_base(&new_instrx, stoi(str));
        }
        else
        {
	        new_instrx.unit = new Unit(*basic_units[INT_CONST]);
	        new_instrx.unit->name = str;
	        if (SUBUNIT == new_instrx.oper)
	        {
	                new_instrx.unit->mem_used = stoi(str);
	                if (INT == parent_ptr->instrxs.back()->unit->type)
	                {
	                        new_instrx.unit->mem_used /= 8;
	                }
	        }
	}
}

void handle_string_literal(string str)
{
        handle_last_instrx();
        new_instrx.unit = new Unit(*basic_units[STRING_LITERAL]);
        new_instrx.unit->name = str;
        new_instrx.unit->mem_used = str.size();
        handle_new_instrx();
}

void handle_compile_time_method_def(string str)
{
        new_instrx.unit = new Unit(*basic_units[COMPTIME_METHOD]);
        new_instrx.unit->str = str;
        handle_new_instrx();
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
	        handle_int_const(name);
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
				new_instrx.unit = find_unit_in_superunit(name, parent_ptr->instrxs.back()->unit);
			}
		}
		if (NULL == new_instrx.unit)
		{
			new_instrx.unit = new Unit;
			new_instrx.unit->type = DEF_NONE;
			new_instrx.unit->name = name;
		}
	}
	handle_new_instrx();
}

void parse_istream(istream &zyfile)
{
	string unit_name_buffer;
	int read_mode = 0;
	
	char c = zyfile.get();
	while (zyfile.good())
	{
	        if (COMPILED == read_mode)
	        {
	                compiled_instrxs.push_back(c);
	        }
	        else if (COMPTIME_METHOD == read_mode)
	        {
	                if ('\\' == c)
	                {
	                        handle_compile_time_method_def(unit_name_buffer);
	                        unit_name_buffer.clear();
	                        read_mode = 0;
	                }
	                else
	                {
	                        unit_name_buffer.push_back(c);
	                }
	        }
	        else if (COMMENT == read_mode)
	        {
	                if ('\n' == c)
	                {
	                        read_mode = 0;
	                }
	        }
		else if (BYTES == read_mode)
		{
		        if ('"' == c)
		        {
		                handle_string_literal(unit_name_buffer);
		                unit_name_buffer.clear();
		                read_mode = 0;
		        }
		        else
		        {
		                unit_name_buffer.push_back(c);
		        }
		}
		else
		{
			if ((c >= 'A' && c <= 'Z') || (c >= 'a' && c <= 'z') || (c >= '0' && c <= '9') || (c == '_'))
			{
				unit_name_buffer.push_back(c);
			}
			else
			{
				if (unit_name_buffer.size() > 0)
				{
					if ("0_START_INSTRXS" == unit_name_buffer)
					{
						read_mode = COMPILED;
						handle_last_instrx();
						funcs.clear();
					}
					else
					{
						handle_unit_name(unit_name_buffer);
					}
					unit_name_buffer.clear();
				}
				if ('\\' == c)
				{
				        read_mode = COMPTIME_METHOD;
				}
				if ('#' == c)
				{
				        read_mode = COMMENT;
				}
				else if ('"' == c)
				{
				        read_mode = BYTES;
				}
				else
				{
				        handle_char(c);
				}
			}
		}
		c = zyfile.get();
	}
	if (unit_name_buffer.size() > 0)
	{
		handle_unit_name(unit_name_buffer);
	}
}

void parse_file(string parse_file_name)
{
        ifstream zyfile(parse_file_name.c_str());
        string outer_file_name = file_name;
        file_name = parse_file_name;
        int outer_line_num = line_num;
        line_num = 1;
        if (!zyfile.is_open())
        {
                set_error(CANNOT_OPEN_FILE, line_num, parse_file_name);
                return;
        }
        parse_istream(zyfile);
        zyfile.close();
        line_num = outer_line_num;
        file_name = outer_file_name;
}

int main(int argc, char** argv)
{
	if (argc < 2)
	{
	        fprintf(stdout, "File name is needed as input.\n");
	}
	else
	{
	        init();
	        start_base_unit();
	        parse_file("sysapi.zwyx");
	        parse_file(string("sysapi_")+FORMAT+".zwyx");
	        
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
	}
	
	return 0;
}

