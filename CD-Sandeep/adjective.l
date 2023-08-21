%option noyywrap
%{
	#include<stdio.h>
%}

%%
int|float|string   {printf("this is keyword");}
%%
int main()
{
	yylex();
	return 0;
}