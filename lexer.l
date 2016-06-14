
%{

#include <stdlib.h>

#include "tokens.h"
%}


digit [0-9]
letter [a-zA-Z]
whitespace [ \t\n]
alphanum_ [a-zA-Z0-9_]

%option noyywrap

%%


[1-9]{digit}*  { return INT_LIT; }
"+"            { return ADD; }
"-"            { return SUB; }
"*"            { return MULT; }
"/"            { return DIV; }
.              { return UNKNOWN; }

%%



