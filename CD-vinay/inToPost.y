%{
	#include<stdio.h>
%}
%token NUM	
%left '+' '-'
%left '*' '/'
%%
S:E {$$=$1; printf("dbsn");}
E:E'+'T {printf("+");}
|T      {}
T:T'*'F {printf("*");}
|NUM   {printf("%d",yylval);}
F:NUM   {printf("%d",yylval);}
;
%%
int main(){
	yyparse();
	return 1;
}
int yyerror(){
	return 1;
}