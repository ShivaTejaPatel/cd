%option noyywrap
%{
#include "desk_cal.tab.h"
%}
%%
[0-9]+ {yylval=atoi(yytext);
	return NUM;}
[\n] {return 0;}
[ \t]+ ;
[A-Za-z]+ {return ID;}
[+|-|*|/] {return yytext[0];} 
%%

