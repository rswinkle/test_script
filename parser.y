%{

#include <stdio.h>
#include <stdlib.h>


%}

%token INT_LIT DBL_LIT
%token ID

%token MULT DIV ADD SUB

%%

add_expr : mult_expr
         | add_expr ADD mult_expr
         | add_expr SUB mult_expr
         ;

mult_expr : primary_expr
          | mult_expr MULT primary_expr
          | mult_expr DIV primary_expr
          ;

primary_expr : INT_LIT           { $$ = atoi(yytext); }
             | '(' add_expr ')'
             ;

%%

#include "lex.yy.c"

void yyerror(char *s)
{
	printf("%d : '%s' \"%s\"\n", yylineno, s, yytext );
}

