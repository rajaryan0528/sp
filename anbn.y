%{
%}
%token A B NL
%%
stmt: S NL {printf("Valid word for the language\n");
        exit(0);};
S:A S B| A B;
%%
int yyerror(){printf("Invalid Word for the language");
exit(0);}
int main(){
printf("Enter the word: ");
yyparse();}
