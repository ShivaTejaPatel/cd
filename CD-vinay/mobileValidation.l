%{
	#include<stdio.h>
%}
%%
[6-9][0-9]{9} {printf("Valid Mobile Number");}
.*	{printf("Invalid");}
%%
int main(){
	printf("Enter no: ");
	yylex();
	return 0;
}
int yywrap(){
	return 1;
}