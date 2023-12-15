%{
#include <stdio.h>
%}
%token VARIABLE NUMBER
%%
stmt:exp;
A:VARIABLE;
B:NUMBER;
exp:A B;

%%
int yyerror(){
printf("Invalid Variable\n");
exit(0);
}
int main(){
printf("Enter the variable: ");
yyparse();
printf("Valid Variable\n    ");
exit(0);}

