%{
    #include<stdio.h>
    int wcnt=0 , ccnt = 0 , bspace=0 ,lin =0;
%}
%%
[\n] {lin++;ccnt += yyleng;}
[ \t] {bspace++;ccnt += yyleng;}
[^\t\n ]+ {wcnt++; ccnt += yyleng;}

%%
int yywrap(){}

int main(){
    yyin= fopen("program.c","r");


    yylex();

    fclose(yyin);
    printf("The Number of Words : %d\nNumer of Chars :%d\nNumber of Blank Spaces :%d\nNUmber of Lines :%d ",wcnt,ccnt,bspace,lin);
    return 0;
}