#include <stdio.h>
#include <stdlib.h>

#include "tokens.h"

int yylex();
int yyparse();

int main()
{

	int i, j;
	while (i = yyparse()) {

		//j = yyparse();
		if (i == 0) {
			printf("i = %d\n", i);
		} else {
			puts("parsing failed\n");
			exit(0);
		}
		
		//print_token(i);
		//printf("%s\n", yytext);
	}


}
