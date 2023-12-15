%{
    #include<string.h>
    #include<stdio.h>
    char ar[30];
    int ptr=0;
%}
%%
[a-zA-Z]* { if(yyleng > ptr){
                strcpy(ar,yytext);
                ptr = yyleng;
            }}
%%
int yywrap(){}

int main(){
    printf("Enter the pragraph : \n");
    yylex();

    printf("The longest word is : %s\n",ar);

    return 0;

}