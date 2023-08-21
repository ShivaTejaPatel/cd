%{
#include<stdio.h>
int yyerror(char *s);
int k=0;
%}

%token id

%%
S:E {printf("valid count=%d",k);}
E:'(' E ')' E {k++;}
 |id {}
 | {}
%%
int main(){
printf("rxpr:");
yyparse();
}
int yyerror(char *s){
	printf("invalid");
}

