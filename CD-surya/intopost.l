%{
#include<stdio.h>
#include "intopost.tab.h"
int yylval;
%}

%%
[0-9]+ { yylval=atoi(yytext);
	return NU;}
[\n] return 0;
[+*/-] return yytext[0];
%%

int yywrap(void){
	return 1;
}
