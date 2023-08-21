%option noyywrap
%{
	#include<stdio.h>
	#include "cal.tab.h"

%}
%%
[0-9]+ {yylval=atoi(yytext);return id;}
[+|-|*|/] {return yytext[0];}
[.|\n] {return 0;}
%%