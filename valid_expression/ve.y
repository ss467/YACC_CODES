%{
#include<stdio.h>
#include<stdlib.h>
%}

%token num id
%left '+''-'
%left '*'
%left '/'

%%
stat:exp'\n' { printf("Valid expression"); exit(0); }
    ;
exp:exp'+'exp|exp'-'exp|exp'*'exp|exp'/'exp|'('exp')'|num|id;
%%

int main(){
printf("Enter expression\n");
yyparse();
return 0;
}

int yyerror(){
printf("Invaid expression\n");
exit(0);
}
