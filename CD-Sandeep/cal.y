%{
	#include<stdio.h>
	int yyerror(char* s);

%}

%token id 
%left '+' '-' 
%left '*' '/' 
%left ')' '('

%%
A : E {printf("%d",$1);}
E : E '+' E  {$$=$1+$3;}
   | E '*' E  {$$=$1*$3;}
   | E '-' E  {$$=$1-$3;}
   | E '/' E  {$$=$1/$3;}
   | '(' E ')' {$$=$2;}
   | id {$$=$1;}
%%

int main(){
	yyparse();
}
int yyerror(char *s){
	printf("\n%s",s);
}