%{
    #include<stdio.h>
    #include<string.h>
    char a[50];
    int ptr = 0;
%}
%%
[a-zA-Z] {a[ptr++] = yytext[0]+3;}
%%
int yywrap(){}
int main(){
    
    printf("ENter the alphabetical line to convert \n");
    yylex();

    printf("%s\n",a);
    return 0;
    
}