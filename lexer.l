
%{

#include <stdlib.h>

#include "y.tab.h"

// atoi interprets 0*[1-9]{digit}*
// as stripping the leading 0's
// whereas the C language strips the 0's and treats it as
// an octal constant (and a 9 in the number is a compile error)
// so
// int a = 0123; // sets a to 83
// int b = atoi("0123"); //sets be to 123


%}


digit [0-9]
letter [a-zA-Z]
whitespace [ \t\n]
alphanum_ [a-zA-Z0-9_]


%%



{digit}*       { return INT_LIT; }
\n|";"         { return SEPARATOR; }
[ \t]+         ; //eat whitespace
.              { return yytext[0]; }

%%



