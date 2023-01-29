%{
#include<stdio.h>
#include<stdlib.h>
%}

%token digit under_score letter

%%
id:exp'\n' { printf("Valid identifier\n"); exit(0); }
  ;
exp:letter x
   |under_score x
   ;
x:digit x
 |under_score x
 |letter x
 |
 ;
%%

int main(){
printf("Enter identifier\n");
yyparse();
return 0;
}

int yyerror(){
printf("Invalid identifier\n");
exit(0);
}
