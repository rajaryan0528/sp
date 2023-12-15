%{
    #include<stdio.h>
    int lc = 0,cc= 0;
%}

%%
[a-zA-Z0-9] {cc++;}
\n {lc++;}
%%
int yywrap(){};
int main(){
    printf("Enter the pragraph with enters as \n ");
    yylex();

    printf("The Number of lines : %d\nThe Number of chars : %d",lc,cc);

    return 0;

}   
