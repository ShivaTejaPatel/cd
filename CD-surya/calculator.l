%{
#include<stdio.h>
#include "calculator.tab.h"
int yylval;
%}

%%
[0-9]+ { yylval=atoi(yytext);
	return NUMBER;}
[\t] ;
[+*/%()-] {return yytext[0];}
[\n] return 0;
%%

int yywrap(void){
	return 1;
}