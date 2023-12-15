%{
#include <stdio.h>
char i , j;
%}
%%
[a-z]* { 
            for( i = 'd' ; i>='a' ;i--){
                for( j = 'a' ; j<=i ;j++){
                    printf("%c",j);
                }
                printf("\n");
            }
        }
%%
int yywrap(){}
int main() {
    yylex();

    return 0;
}