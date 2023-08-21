%option noyywrap
%{
	#include<stdio.h>
	#include "bracec.tab.h"
%}

%%
[)] {return yytext[0];}
[(] {return yytext[0];}
[\n] {return 0;}
%%
