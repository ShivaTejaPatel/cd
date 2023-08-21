%option noyywrap
%{
	#include<stdio.h>
%}
%%
[ed] {printf("It is verb");}
%%
int main(){
	printf("enter a word\n");
	yylex();
	return;
}


