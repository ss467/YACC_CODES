%{
#include<stdio.h>
#include<stdlib.h>
%}

%token A B

%%
stat:s'\n' { printf("Valid expression\n"); exit(0); }
    ;
s:A s B
 |
 ;
%%

int main(){
printf("Enter expression\n");
yyparse();
return 0;
}

int yyerror(){
printf("Invalid expression\n");
exit(0);
}
