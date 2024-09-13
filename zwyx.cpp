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
#define ARG 9
#define BYTES_PTR 10
#define NAME 11
#define BASE 12
#define IMPORT 13
#define IN 14
#define STRING_LITERAL 15
#define COMPTIME_METHOD 16

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

#define NUM_BASIC_UNITS 17
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
struct instrx_struct
{
	struct unit_struct *unit;
	int oper;
	int is_ptr;
	int unit_line;
	int oper_line;
	int base_level;
	int state;
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
	int base_ptr_offset;
	struct unit_struct *in_unit;
	string str;
};

string basic_unit_names[] = {"none", "", "", "int", "", "method", "", "", "bytes", "arg", "", "",
                              "", "_import", "", "", ""};
string operators[] = {"", ":", "~", ".", "?", "=", "+", "/", "", "", "-", "", "^", "?*", "*", "%", 
                "", "", ">", "<", "&", "|"};

struct error_struct errors[MAX_ERRORS];
int num_errors;

struct unit_struct *parent_ptr;

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
vector<string> data_section_strings;
int num_f = 0;
int temp_reg_mem;

int comptime_method = 0;

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
		(void)fprintf(stdout, "\": %s\n", error_messages[errors[i].type].c_str());
	}
}

vector<struct unit_struct*> instantiate_subunits(struct unit_struct *superunit, struct unit_struct *mem_ref_parent);
struct unit_struct* instantiate_unit(struct unit_struct *unit, struct unit_struct *base,
                                      struct unit_struct *mem_ref_parent);
void write_instrxs(vector<struct instrx_struct*> instrx);
void write_line_with_control(struct instrx_struct *instrx);
void parse_file(string file_name);
void parse_istream(istream &zyfile);
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
	
	struct unit_struct *count = new unit_struct(*basic_units[INT]);
	count->name = "count";
	count->mem_base = STRUCT;
	count->mem_used = WORD_SIZE;
	count->mem_offset = WORD_SIZE;
	basic_units[BYTES_PTR]->subunits.push_back(count);
	basic_units[METHOD_PTR]->subunits.push_back(count);
}
void init(void)
{
	instrx_idx = 0;
	num_errors = 0;
	parent_ptr = NULL;
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
void write_load_ptr_base(struct instrx_struct *instrx)
{
	(void)fprintf(xcfile, "mov\t%s,\t", REG_PTR);
	write_unit(instrx);
	(void)fprintf(xcfile, "\n");
}
void write_array_count(struct instrx_struct *instrx)
{
        struct instrx_struct temp = *instrx;
        temp.unit = instrx->unit->subunits[0];
        
        write_unit(&temp);
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
	        (void)fprintf(xcfile, "mov\t%s,\t", REG_COUNT);
	        write_array_count(instrx);
	        (void)fprintf(xcfile, "\n");
		(void)fprintf(xcfile, "mov\t%s,\t", REG_TEMP);
		write_unit(instrx);
		(void)fprintf(xcfile, "\n");
	}
	
	if (base_instrx != NULL)
	{
	        if ((STRUCT == base_instrx->unit->type)
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
void write_insertion(struct instrx_struct *instrx)
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

void write_ptr_to_temp(struct instrx_struct *instrx)
{
	
	if (METHOD == instrx->unit->type)
	{
		(void)fprintf(xcfile, "lea\t%s,\t", REG_TEMP);
		(void)fprintf(xcfile, "[rel+f%d]\n", instrx->unit->f_num);
	}
	else
	{
	        if ((STRUCT == instrx->unit->type) || (BYTES == instrx->unit->type))
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

void load_base_to_temp(struct instrx_struct* instrx)
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
void write_insertion_src(struct instrx_struct *instrx)
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
void decrease_base_level(int base_level, struct unit_struct* base)
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
void load_pointer_base(struct instrx_struct *instrx)
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
void load_base(struct instrx_struct *instrx)
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

struct unit_struct* in_unit(struct unit_struct *unit)
{
        if ((STRUCT == unit->type) && (unit->subunits.size() > 0))
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
void write_insertion_src_out_unit(struct instrx_struct *instrx)
{
        struct instrx_struct temp = *instrx;
        temp.unit = in_unit(temp.unit);
        write_insertion_src(&temp);
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
		&& ((instrx->oper != INSERTION)
		|| ((instrx->unit->type != INT_CONST) && (instrx->unit->type != STRING_LITERAL))))
	{
		write_insertion_src_out_unit(instrx);
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
			write_instrxs(unit->instrx_list);
			
			restore_base_to_reg();
		}
	}
}
void write_insertion_in_unit(struct instrx_struct *instrx)
{
        struct instrx_struct temp = *instrx;
        temp.unit = in_unit(temp.unit);
        write_insertion(&temp);
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
		write_instrxs(funcs[i]->instrx_list);
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
	
	(void)fprintf(xcfile, "SECTION .data\n");
	
	for (int i = 0; i < data_section_strings.size(); i++)
	{
	        (void)fprintf(xcfile, "s%d\tdb\t'%s'\n", i+1, data_section_strings[i].c_str());
	}
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
        if ((parent_ptr->type != STRUCT) || (unit->type != STRUCT))
        {
                set_error(INVALID_USE_OF_OPER, line_num, operators[DEFINE]);
        }
	parent_ptr->mem_used = unit->mem_used;
	parent_ptr->subunits = unit->subunits;
	if ((STRUCT == parent_ptr->parent->type) && (unit->parent->type != STRUCT))
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
int handle_alignment(int mem_offset)
{
        if ((mem_offset % WORD_SIZE) != 0)
        {
                return mem_offset / WORD_SIZE * WORD_SIZE + WORD_SIZE;
        }
        return mem_offset;
}
void handle_define_statement(struct unit_struct *defined_unit, struct unit_struct *definition_unit)
{
	definition_unit->name = defined_unit->name;
	if ((STRUCT == definition_unit->mem_base) || (METHOD == definition_unit->mem_base))
	{
		parent_ptr->mem_used += handle_alignment(definition_unit->mem_used);
	}
	parent_ptr->subunits.push_back(definition_unit);
}
struct unit_struct* instantiate_unit(struct unit_struct *unit, struct unit_struct *base,
                                      struct unit_struct *mem_ref_parent)
{
	struct unit_struct *instance = new unit_struct;
	*instance = *unit;
	instance->mem_base = mem_ref_parent->type;
	if ((METHOD_PTR == mem_ref_parent->type) || (BYTES_PTR == mem_ref_parent->type)
	    || (STRUCT == mem_ref_parent->type))
	{
	        instance->mem_base = STRUCT;
	}
	if ((INT_CONST == instance->type) && (instance->mem_used > 0))
	{
	        instance->type = BYTES;
	}
	if (((METHOD_PTR == instance->type) || (BYTES_PTR == instance->type)
	    || (BYTES == instance->type) || (STRUCT == instance->type))
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
	        || (STRUCT == mem_ref_parent->type)) && (METHOD == mem_ref_parent->mem_base))
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
	        instance->base_instrx = new instrx_struct;
	}
	if ((METHOD_PTR == instance->type) || (BYTES_PTR == instance->type) || (STRUCT == instance->type))
	{
		instance->subunits = instantiate_subunits(instance, mem_ref_parent);
	}
	return instance;
}
void instantiate_method(struct instrx_struct *instrx)
{
	instrx->unit = new unit_struct(*instrx->unit);
	instrx->unit->mem_used = parent_ptr->mem_used;
	if (METHOD == instrx->unit->type)
	{
		instrx->unit->base_instrx = instrx->ptr_source;
	}
	else
	{
	        struct unit_struct* superunit = parent_ptr;
	        while (METHOD == superunit->type)
	        {
	                if (superunit->base_instrx != NULL)
	                {
	                        instrx->unit->base_instrx = superunit->base_instrx;
	                        break;
	                }
	                if (superunit->mem_base != METHOD)
	                {
	                        instrx->unit->base_instrx = new instrx_struct;
	                        instrx->unit->base_instrx->base_level = 1;
	                        instrx->unit->base_instrx->unit = superunit->base;
	                        break;
	                }
	                superunit = superunit->parent;
	        }
	}
}
void instantiate_unit_method(struct instrx_struct *instrx)
{
	instrx->unit->method = new unit_struct(*instrx->unit->method);
	instrx->unit->method->mem_used = instrx->unit->mem_offset + WORD_SIZE;
	instrx->unit->method->base = instrx->unit;
	instrx->unit->method->mem_base = METHOD;
}
struct unit_struct* instantiate_as_ptr(struct unit_struct *unit)
{
        struct unit_struct *new_ptr;
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
vector<struct unit_struct*> instantiate_subunits(struct unit_struct *superunit, struct unit_struct *mem_ref_parent)
{
	vector<struct unit_struct*> units;
	
	for (int i = 0; i < superunit->subunits.size(); i++)
	{
		if (STRUCT == superunit->subunits[i]->mem_base)
		{
			units.push_back(instantiate_unit(superunit->subunits[i], NULL, mem_ref_parent));
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
	else if (STRING_LITERAL == instrx->unit->type)
	{
	        data_section_strings.push_back(instrx->unit->name);
	        int size;
	        int sizes;
	        size = data_section_strings.size();
	        instrx->unit->f_num = size;
	}
	else if (!instrx->unit->mem_base && (instrx->unit->type != IMPORT) && (instrx->unit->type != ARG)
	                    && (instrx->oper != IGNORE) && (instrx->unit->type != COMPTIME_METHOD))
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
			if (STRUCT == typing->type)
			{
			        instrx->unit->typing = typing;
			}
			if (STRUCT == parent_ptr->type)
			{
			        instrx->base_level = 1;
			}
			if (STRUCT == instrx->unit->type)
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
void find_unit_in_instrx(string name, struct instrx_struct *instrx)
{
        find_unit_in_superunit(name, instrx->unit);
        if ((new_instrx.unit != NULL) && ((PTR == instrx->unit->type) || (new_instrx.unit->base != NULL)))
        {
                new_instrx.ptr_source = instrx;
        }
}
void find_unit_in_superunit_no_instrx(string name, struct unit_struct *superunit)
{
        find_unit_in_superunit(name, superunit);
        
        if ((new_instrx.unit != NULL) && (new_instrx.unit->base != NULL) && (new_instrx.unit->type != METHOD_PTR)
                                        && (new_instrx.unit->base->type != METHOD))
        {
                new_instrx.ptr_source = new instrx_struct;
                new_instrx.ptr_source->unit = superunit;
        }
}
void id_unit(string name)
{
	struct unit_struct *superunit = parent_ptr;
	while ((NULL == new_instrx.unit) && (superunit != NULL) && (METHOD == superunit->type))
	{
		find_unit_in_superunit_no_instrx(name, superunit);
		if (METHOD == superunit->mem_base)
		{
		        superunit = superunit->parent;
		}
		else
		{
		        if ((METHOD_PTR == superunit->mem_base) && (NULL == new_instrx.unit))
		        {
		                find_unit_in_superunit_no_instrx(name, superunit->parent);
		                if ((new_instrx.unit != NULL) && new_instrx.unit->mem_base)
		                {
		                        if (STRUCT == superunit->parent->type)
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
	struct unit_struct* superunit_level_1 = superunit;
	while ((NULL == new_instrx.unit) && (superunit != NULL))
	{
		find_unit_in_superunit_no_instrx(name, superunit);
		superunit = superunit->parent;
		base_level++;
	}
	if ((new_instrx.unit != NULL) && (superunit != NULL))
	{
	        new_instrx.base_level = base_level;
	        if (STRUCT == parent_ptr->type)
	        {
	                new_instrx.base_level = 1;
	        }
	        if (new_instrx.base_level > 1)
	        {
	                new_instrx.ptr_source = new instrx_struct;
	                new_instrx.ptr_source->unit = superunit_level_1;
	        }
	}
	superunit = parent_ptr;
	
	while ((NULL == new_instrx.unit) && (superunit != NULL) && (METHOD == superunit->mem_base))
	{
	        if ((superunit->base_instrx != NULL) && (superunit->base_instrx->unit != NULL))
	        {
		        find_unit_in_instrx(name, superunit->base_instrx);
		}
		if (METHOD_PTR == superunit->mem_base)
		{
		        find_unit_in_superunit_no_instrx(name, superunit->base);
		}
		superunit = superunit->parent;
	}
	
}

void handle_base(struct instrx_struct *instrx, int base_level)
{
        struct unit_struct *superunit = parent_ptr;
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
void handle_base_no_index(struct instrx_struct* instrx)
{
        if ((DEFINE == instrx->oper) && (STRUCT == parent_ptr->type))
        {
                parent_ptr->mem_used += WORD_SIZE;
                instrx->oper = IGNORE;
                parent_ptr->instrx_list[parent_ptr->instrx_list.size() - 2]->oper = IGNORE;
        }
        else
        {
                handle_base(instrx, 1);
        }
}
void handle_custom_compile_time_method(struct instrx_struct* method_struct, struct instrx_struct *arg)
{
        struct unit_struct parent;
        parent.parent = parent_ptr;
        parent.typing = NULL;
        parent.base_instrx = arg;
        parent_ptr = &parent;
        struct instrx_struct temp = new_instrx;
        new_instrx.unit = NULL;
        new_instrx.oper = NO_OPER;
        istringstream str(method_struct->unit->str);
        comptime_method = 1;
        parse_istream(str);
        parent_ptr = parent.parent;
        parent.base_instrx = NULL;
        comptime_method = 0;
        arg->unit = parent.subunits[0];
        new_instrx = temp;
}
void handle_arg(struct instrx_struct* instrx)
{
        handle_instantiation(instrx);
        parent_ptr->in_unit = instrx->unit;
}
void handle_compile_time_method(struct instrx_struct* method_struct, struct instrx_struct* arg)
{
        if (ARG == method_struct->unit->type)
        {
                handle_arg(arg);
        }
        else
        {
                handle_custom_compile_time_method(method_struct, arg);
        }
        arg->oper = method_struct->oper;
        parent_ptr->instrx_list.pop_back();
        delete(parent_ptr->instrx_list.back());
        parent_ptr->instrx_list.pop_back();
        parent_ptr->instrx_list.push_back(arg);
}
void handle_last_instrx()
{
	if ((parent_ptr->instrx_list.size() > 0) && (new_instrx.oper != DEFINE))
	{
		struct instrx_struct *instrx = parent_ptr->instrx_list.back();
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
                else if (BASE == instrx->unit->type)
                {
                        handle_base_no_index(instrx);
                }
		else if ((DEFINE == instrx->oper) && (1 == parent_ptr->instrx_list.size()))
		{
			handle_inheritance(instrx->unit);
		}
		else if ((instrx->unit->type != DEF_NONE) && ((instrx->unit->type != INT_CONST)
		          || (DEFINE == instrx->oper)))
		{
		        struct instrx_struct* second_last_instrx
		                = parent_ptr->instrx_list[parent_ptr->instrx_list.size() - 2];
			if ((INSERTION == instrx->oper) && ((ARG == second_last_instrx->unit->type)
			                              || (COMPTIME_METHOD == second_last_instrx->unit->type)))
			{
			        handle_compile_time_method(second_last_instrx, instrx);
			        second_last_instrx = parent_ptr->instrx_list[parent_ptr->instrx_list.size() - 2];
			}
			handle_instantiation(instrx);
			if ((DEFINE == instrx->oper) && (instrx->unit->type != ARG)
			        && ((instrx->unit->type != COMPTIME_METHOD) || (INSERTION != new_instrx.oper)))
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
struct unit_struct *get_correct_method_type()
{
	if ((DEFINE == new_instrx.oper) || (SUBUNIT == new_instrx.oper))
	{
		return basic_units[METHOD_PTR];
	}
	
	if (STRUCT == parent_ptr->type)
	{
	        return basic_units[METHOD];
	}
	
	struct unit_struct* superunit = parent_ptr;
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
		        new_instrx.ptr_source = new instrx_struct;
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
        if ((1 == parent_ptr->instrx_list.size()) && (DEFINE == parent_ptr->instrx_list.back()->oper))
	{
	        set_error(INVALID_USE_OF_OPER, line_num, operators[SUBUNIT]);
	}
	if ((BASE == parent_ptr->instrx_list.back()->unit->type) && (new_instrx.unit->type != INT_CONST))
	{
	        handle_base(parent_ptr->instrx_list.back(), 1);
	}
	if ((new_instrx.unit->type != METHOD_PTR) && (new_instrx.unit->type != INT_CONST)
	    && (parent_ptr->instrx_list.back()->unit->type != BASE))
	{
		handle_instantiation(parent_ptr->instrx_list.back());
	}
	if ((METHOD == new_instrx.unit->type) && (DEFINE == parent_ptr->instrx_list.back()->oper))
	{
		parent_ptr->instrx_list.back()->oper = NO_OPER;
	}
	if ((PTR == parent_ptr->instrx_list.back()->unit->type) || (METHOD == new_instrx.unit->type)
	    || (!new_instrx.unit->mem_base && (new_instrx.unit->type != INT_CONST)))
	{
		parent_ptr->instrx_list.back()->ptr_source = 
		                                        new instrx_struct(*parent_ptr->instrx_list.back());
		        
		parent_ptr->instrx_list.back()->ptr_source->oper = NO_OPER;
		parent_ptr->instrx_list.back()->base_level = 0;
	}
	parent_ptr->instrx_list.back()->state = 0;
	parent_ptr->instrx_list.back()->unit = new_instrx.unit;
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
	else if ((parent_ptr->instrx_list.size() > 0) && (parent_ptr->instrx_list.back()->oper != IGNORE)
	          && (IMPORT == parent_ptr->instrx_list.back()->unit->type))
	{
	        if (new_instrx.oper != INSERTION)
	        {
	                set_error(INVALID_USE_OF_IMPORT, line_num, basic_units[IMPORT]->name);
	        }
	        else
	        {
	                parent_ptr->instrx_list.back()->oper = IGNORE;
	                parse_file(new_instrx.unit->name + ".zwyx");
	        }
	}
	else
	{
	        struct instrx_struct *temp = new instrx_struct(new_instrx);
		
		if ((INSERTION == new_instrx.oper) || (SUBUNIT == new_instrx.oper)
		    || (WHILE == new_instrx.oper) || (ELSE == new_instrx.oper) || (BRANCH == new_instrx.oper))
		{
			parent_ptr->instrx_list.back()->insertion_source = temp;
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
	new_instrx.unit = NULL;
	parent_ptr->instrx_list.back()->unit_line = line_num;
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
		        unit->base_ptr_offset = 0;
			unit->mem_used += WORD_SIZE;
			if (METHOD == parent_ptr->instrx_list.back()->unit->type)
			{
				unit->type = METHOD;
				handle_new_method(unit);
				parent_ptr->method = unit;
			}
		}
		handle_define_statement(parent_ptr->instrx_list.back()->unit, unit);
		parent_ptr->instrx_list.back()->oper = IGNORE;
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
			unit->base_instrx = new instrx_struct(*parent_ptr->instrx_list.back());
			unit->base_instrx->state = 0;
			unit->base = parent_ptr->instrx_list.back()->unit;
			if (parent_ptr->instrx_list.back()->unit->mem_offset > parent_ptr->mem_used)
			{
			        unit->mem_used += handle_alignment(parent_ptr->instrx_list.back()->unit->mem_used);
			}
		}
		else if (new_instrx.is_ptr)
		{
		        unit->base = in_unit(parent_ptr->instrx_list.back()->unit)->base;
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
        if (new_instrx.is_ptr || ((oper != DEFINE) && (0 == parent_ptr->instrx_list.size())))
	{
	        set_error(INVALID_USE_OF_OPER, line_num, operators[oper]);
	}
	if ((INSERTION == oper) && (STRUCT == parent_ptr->type))
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
                line_num++;
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
	parent_ptr = new unit_struct;
	*parent_ptr = *basic_units[NAMESPACE];
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





void handle_int_const(string str)
{
        if ((SUBUNIT == new_instrx.oper) && (BASE == parent_ptr->instrx_list.back()->unit->type))
        {
                handle_base(&new_instrx, stoi(str));
        }
        else
        {
	        new_instrx.unit = new unit_struct(*basic_units[INT_CONST]);
	        new_instrx.unit->name = str;
	        if (SUBUNIT == new_instrx.oper)
	        {
	                new_instrx.unit->mem_used = stoi(str);
	                if (INT == parent_ptr->instrx_list.back()->unit->type)
	                {
	                        new_instrx.unit->mem_used /= 8;
	                }
	        }
	}
}
void handle_string_literal(string str)
{
        handle_last_instrx();
        new_instrx.unit = new unit_struct(*basic_units[STRING_LITERAL]);
        new_instrx.unit->name = str;
        new_instrx.unit->mem_used = str.size();
        handle_new_instrx();
}
void handle_compile_time_method_def(string str)
{
        new_instrx.unit = new unit_struct(*basic_units[COMPTIME_METHOD]);
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
void parse_istream(istream &zyfile)
{
	line_num = 1;
	
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
void parse_file(string file_name)
{
        ifstream zyfile(file_name.c_str());
        if (!zyfile.is_open())
        {
                set_error(CANNOT_OPEN_FILE, line_num, file_name);
                return;
        }
        
        parse_istream(zyfile);
        zyfile.close();
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

