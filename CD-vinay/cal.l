%{
	#include "cal.tab.h";
	extern int yylval;
%}
%%
[0-9]+	{yylval=atoi(yytext);return NUMBER;}
[\n]	{return 1;}
.	{return yytext[0];}
%%
int yywrap(){
	return 0;
}