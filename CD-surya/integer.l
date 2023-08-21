%{
#include<stdio.h>
%}

%%
^[-+]?[0-9]+$ {printf("Valid Integer");}
^[-+]?[0-9]+[.][0-9]+$  printf("valid float");
.;
%%

int yywrap(){}

int main(){
	yylex();
	return 0;
}