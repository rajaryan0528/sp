%{
    #include<stdio.h>
    #include<string.h>
    int kw = 0 , integ = 0 ,flot = 0 , iden = 0 , oper = 0 ,comm = 0;
%}
%%
"//" {comm++;}
[if|else|while|for|do|int|float|double] { kw++;}
^[-+]?[0-9]*[.][0-9]+$ flot++; 
[0-9]+ {integ++;}
[+|-|*|/] {oper++;}
[a-zA-Z][0-9a-zA-Z]+ {iden++;}
. {}

%%

int yywrap(){}

int main(){
    printf("Enter the code fragment here at terminal : ");
    yylex();

    printf("No of Integers :%d\n Keywords :%d\n Float :%d \n Identifier : %d\n Comments : %d\n Operators : %d\n",integ,kw,flot,iden,comm,oper);
    return 0;
}