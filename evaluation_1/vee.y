%{
#include<stdio.h>
#include<stdlib.h>
%}

%token num
%left '+''-'
%left '*'
%left '/'

%%
stat:E'\n' { printf("Valid expressions evalutate to %d",$$); exit(0); }
    ;
E:E'+'E { $$=$1+$3; }
 |E'-'E { $$=$1-$3; }
 |E'*'E { $$=$1*$3; }
 |E'/'E { if($3==0){ printf("Division by zero\n"); exit(0); } $$=$1/$3; }
 |'('E')' { $$=$2; }
 |num { $$=$1; }
;
%%

int main(){
printf("Enter expression\n");
yyparse();
return 0;
}

int yyerror(){
printf("Invalid expression cant perform operations ABORTING\n");
exit(0);
}
