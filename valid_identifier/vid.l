%{
#include "y.tab.h"
%}

%%
[0-9]+ { return digit; }
[_] { return under_score; }
[a-zA-Z] { return letter; }
.|\n { return yytext[0]; }
%%

int yywrap(){ return 1; }

