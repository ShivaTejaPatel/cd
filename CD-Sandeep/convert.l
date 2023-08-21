%option noyywrap
%{
	#include<stdio.h>
	#include "convert.tab.h"
%}

%%
[0] {yylval=0;return num;} 
[1] {yylval=1;return num;} 
[\n] {return 0;}
%%
 