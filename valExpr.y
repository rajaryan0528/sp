%{
#include <stdio.h>
%}

%token ID NUMBER
%left '+' '-'
%left '*' '/'

%%
stmt:exp;
exp:exp'+'exp
|exp'-'exp
|exp'*'exp
|exp'/'exp
|NUMBER
|ID
;
%%
int main(){
printf("Enter the expression: ");
yyparse();
printf("Valid Expression\n");
exit(0);}
int yyerror(){
printf("Invalid Expression\n");
exit(0);}
