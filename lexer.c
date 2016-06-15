
#include <stdio.h>
#include <stdlib.h>

#define MAX_TOK_LEN 257

lex_token get_token(lexer_state* lex_state)
{
	static char token_buf[MAX_TOK_LEN];
	int i = 0;

	lex_token token = { 0 };

	char* c = lex_state.line + lex_state.pos - 1;
	while (isspace(*c) && *c != '\n') {
		++c;
	}

	switch (*c) {
	case '+': token.tok.type = ADD; break;
	case '-': token.tok.type = SUB; break;
	case '*': token.tok.type = MULT; break;
	case '/': token.tok.type = DIV; break;
	
	case '\n':
	case '\0':
		token.tok.type = END;
		break;

	default:
		if (isdigit(*c)) {
			while (isdigit(*c))
				token_buf[i++] = *c++;
		}
		--c;
		token.tok.type = INT_LIT;
		token.tok.val = atoi(token_buf);

		} else {
			printf("lexer error: Unrecognized token '%c'\n'", *c);
			exit(0);
		}
	}

	lex_state.pos = c - lex_state.line
	
	return tok;
}



void print_token(int token)
{
	switch (token) {
	case INT_LIT: puts("INT_LIT"); break;
	case ID: puts("ID"); break;
	case NEWLINE: puts("NEWLINE"); break;
	case MULT: puts("MULT"); break;
	case DIV: puts("DIV"); break;
	case ADD: puts("ADD"); break;
	case SUB: puts("SUB"); break;
	default:
		;
		//puts("unknown token");
	}
}

