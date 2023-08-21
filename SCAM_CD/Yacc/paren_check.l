%option noyywrap
%{
#include "y.tab.h"
%}
%%
[a-z]+ {return id;}
[()] {return yytext[0];}
[\n] {return 0;}
. ;

%%

