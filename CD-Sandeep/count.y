%{
	#include<stdio.h>
	int yyerror(char *s);
%}

%token num

%% 
A : L {printf("%d",$1);}
L : L B {$$=$1+$2;}
L : B  {$$=$1;}
B : num {$$=$1;} 
%%
int main(){
  yyparse();
  return 0;}
int yyerror(char *s){
  printf("\n%s",s);
  }