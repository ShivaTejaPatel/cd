%{
#include<stdio.h>
#include<stdlib.h>
%}

%%
\/\/.* {};
\/\*(.*\n)*.*\*\/ {};
%%

int yywrap(){}
int main(){
	yyin = fopen("temp.txt","r");
	yyout = fopen("out.txt","w");
	yylex();
	return 0;
}