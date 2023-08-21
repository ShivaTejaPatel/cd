%{
#include<stdio.h>
int flag=0;
%}
%token NUMBER
%left '+' '-'
%left '*' '/' '%'
%left '(' ')'
%%
ArithmeticExpression:E{
		printf("\nResult=%d", $$);
		return 0;
		}
E:E'+'E {$$=$1+$3;}
 | E'-'E {$$=$1-$3;}
 |E'*'E {$$=$1*$3;}
 | E'/'E {$$=$1/$3;}
 | E'%'E {$$=$1%$3;}
 |'('E')'{$$=$2;}
 | NUMBER {$$=$1;}
 ;
%%
void main(){
	printf("enter expression: ");
	yyparse();
	if(flag==0){
		printf("\nvalid");
	}
}
void yyerror(){
	printf("\nInvalid");
	flag=1;
}
  
  
