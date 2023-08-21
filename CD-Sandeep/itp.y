%{
	#include<stdio.h>
	int yyerror(char *s);

%}
%token id '*' '+'

%%
E : E '+' T {printf("+");}
   | T	    {}
T : T '*' F {printf("*");}
   | F	    {}
F : id {printf("%d",$1);}
%%
int main(){
	yyparse();
	return 0;
}
int yyerror(char *s){
	printf("\n%s",s);
}
