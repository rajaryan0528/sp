%{
    #include<stdio.h>
    int varcnt=0;
%}
%%
[int|float|double|include|stdio.h|printf|main {}
[a-z,A-Z,_][a-z,A-Z,0-9,_]* {varcnt++;}]
. {}
%%
int yywrap(){}

int main(){
    yyin= fopen("program.c","r");


    yylex();

    fclose(yyin);

    printf("The Number of Variables : %d\n",varcnt);

    return 0;
}
