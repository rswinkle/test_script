
#include "lexer.h"


int parse()
{
	return parse_statements();
}

int parse_statements()
{
	while () {
		parse_expr_stmt();
	}
}

int parse_expr_stmt()
{
	parse_add_expr();
	//parse_newline()
}

int parse_add_expr()
{
	parse_mult_expr();
}


int parse_mult_expr()
{
	parse_primary();
}

int parse_primary()
{
	return
}
