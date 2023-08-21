%{
#include<stdio.h>
int yylex();
int yyerror(char *);
%}

%token NU '+' '*'

%%
E : E '+' T {printf("+");}
| E '-' T {printf("-");}
| T
T : T '*' F {printf("*");}
| T '/' F {printf("/");}
| F
F : NU {printf("%d",$1);};
%%

void main(){
	printf("Enter any expression: ");
	yyparse();
}

int yyerror(char *s){
	printf("%c",s);
}