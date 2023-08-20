%{
	#include<stdio.h>
%}
%token NUMBER
%left '+' '-'
%left '*' '/'
%left '(' ')'
%%
Ans : E {printf("Result is %d",$$);return 0;}
E:E'+'E {$$=$1+$3;}
|E'-'E	{$$=$1-$3;}
|E'*'E	{$$=$1*$3;}
|E'/'E	{$$=$1/$3;}
|'('E')'{$$=$2;}
|NUMBER {$$=$1;}
;
%%
int main(){
	printf("Enter Exp: ");
	yyparse();
	return 0;
}
int yyerror(){
	printf("Invalid");
}