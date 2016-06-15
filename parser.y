%{

#include <stdio.h>
#include <stdlib.h>

extern int yylineno;
extern char* yytext;

int yylex();

void yyerror(char *s)
{
	printf("%d : '%s' \"%s\"\n", yylineno, s, yytext );
}

int yywrap()
{
	return 1;
}


%}

%token INT_LIT DBL_LIT
%token ID SEPARATOR

%token MULT DIV ADD SUB

%%

statements :
           | statements statement
           ;

statement : expr_stmt                    { printf("= %d\n", $1); }
          | null_stmt

null_stmt : SEPARATOR ;

expr_stmt : add_expr SEPARATOR           { $$ = $1; }
          ;

add_expr : mult_expr                     { $$ = $1; }
         | add_expr '+' mult_expr        { $$ = $1 + $3; }
         | add_expr '-' mult_expr        { $$ = $1 - $3; }
         ;

mult_expr : primary_expr                 { $$ = $1; }
          | mult_expr '*' primary_expr   { $$ = $1 * $3; }
          | mult_expr '/' primary_expr   { $$ = $1 / $3; }
          ;

primary_expr : INT_LIT           { $$ = atoi(yytext); }
             | '(' add_expr ')'  { $$ = $2; }
             ;

%%



