%{
#include <stdio.h>
#include "y.tab.h"
%}
%%
[a-z] {return VARIABLE;}
[0-9] {return NUMBER;}
\n {return 0;}
. {return yytext[0];}
%%
int yywrap(){return 1;}

