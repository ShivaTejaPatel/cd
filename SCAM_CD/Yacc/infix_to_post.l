%{
#include<stdio.h>
#include "y.tab.h"
extern char yylval;
%}
%%
[0-9]+ { yylval=yytext[0]; return NUMBER;}
[\t ];
[\n] return 0;
. return yytext[0];
%%
int yywrap()
{
	return 1;
}
