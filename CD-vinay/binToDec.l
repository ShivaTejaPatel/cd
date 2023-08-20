%{
	#include "binToDec.tab.h";
	extern int yylval;
%}
%%
[01]+ {yylval=strtol(yytext, NULL, 2); return NUMBER;}
[\n]   {return 1;}
.      {return yytext[0];}
%%
int yywrap(){
	return 1;
}