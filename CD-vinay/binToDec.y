%{
	#include<stdio.h>
%}
%token NUMBER;
%%
Ans:NUMBER {printf("Result is %d",$1); return 1;}
;
%%
int main(){
	printf("Enter bin: ");
	yyparse();
	return 1;
}
int yyerror(){
	printf("Invalid");
	return 1;
}