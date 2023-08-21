%{
	#include<stdio.h>
	#include<stdlib.h>
%}
%%
\/\/(.*) {};
\/\/*(.*\n)*.*\*\/ {};
%%
int yywrap(){}
int main(){	
	yyin=fopen("inputFile.c","r");
	yyout=fopen("outputFile.c","w");
	yylex();
	return 0;
}
