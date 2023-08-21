%{
	#include<stdio.h>
	int yyerror(char *s);
	int m;
%}

%token '('  ')'

%% 
A : S {printf("%d ",m);};
S : '(' S ')' {m++;};
S :  ;
%%
int main(){
  yyparse();
  return 0;
  }
int yyerror(char *s){
printf("\n%s",s);
}