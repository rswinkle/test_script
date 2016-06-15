
#include "lexer.h"
#include "linenoise.h"


int parse()
{
	parse_statements();
}

int parse_statements()
{
	char* line = NULL;
	lexer_state lexer = { NULL, 1, 1 };

	while (lexer.line = linenoise(">>> ")) {
		lex_token t = get_token(&lexer);
		while (t.tok.type != END) {
			if (t.tok.type != SEPARATOR) {
				parse_expr_stmt();
			}
			t = get_token(&lexer);
		}


		free(line);
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
