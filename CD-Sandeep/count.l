%option noyywrap
%{
	#include<stdio.h>
	#include "count.tab.h"
%}

%%
[01] {yylval=1;return num;}
[\n] {return 0;}
%%