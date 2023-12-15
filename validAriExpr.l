%{
    #include<stdio.h>
    #include<string.h>
    #include<stdbool.h>

    int top = -1 ,i =0 ,j =0 ,var =0 , oper =0;
    bool valid = true;
    char stk[100] , vari[10][10] , opera[10][10] ;
%}

%%
"("|"{"|"[" {top++ ; stk[top] = yytext[0];}
")"|"}"|"]" {
            if(yytext[0] == ')'){
                if(stk[top] != '(' || var-oper != 1 ) {
                    valid=false;
                }
                top--;
                var=1;
                oper=0;
            }

            else if(yytext[0] == '}'){
                if(stk[top] != '{' || var-oper != 1){
                valid = false;}

                top--;
                var=1;
                oper=0;
            }

            else if(yytext[0] == ']'){
                if(stk[top] != '[' || var-oper != 1){
                valid = false;}

                top--;
                var=1;
                oper=0;
            }

        }
[0-9]+|[a-zA-Z][a-zA-Z0-9_]* { var++;
                                strcpy(vari[i],yytext);
                                i++;
                            }
"+"|"-"|"*"|"/" {oper++;
            strcpy(opera[j],yytext);
            j++;
            }
%%

int yywrap(){ return 1 ;}

int main(){
    printf("Enter the Arithmetic Expression");
    yylex();

    if(valid == true && top == -1 && var-oper == 1){
        printf("EXpression Valid!\n");
    }

    else{
        printf("Expression Invalid\n");
    }

    return 0;
}