%{
	#include<stdio.h>
	int yyerror(char *s);
	int k=0;
%}

%token num

%% 
A : S {$$=$1;printf("%d",$$);}
S :S B {$$=$1*2+$2;}
| B {$$=$1;}
B : num {$$=$1;}
//| zero {$$=$1;}
%%
int main(){
  yyparse();
  return 0;}
int yyerror(char *s){
  printf("\n%s",s);
  }