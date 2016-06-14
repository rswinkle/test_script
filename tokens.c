#include "tokens.h"

#include <stdio.h>

void print_token(int token)
{
	switch (token) {
	case INT_LIT: puts("INT_LIT"); break;
	case ID: puts("ID"); break;
	case MULT: puts("MULT"); break;
	case DIV: puts("DIV"); break;
	case ADD: puts("ADD"); break;
	case SUB: puts("SUB"); break;
	default:
		;
		//puts("unknown token");
	}
}
