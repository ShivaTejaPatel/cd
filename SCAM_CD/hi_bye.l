%{
#include<stdio.h>
%}
%%
"hi" {printf("bye");}
.* {printf("wrong");}
%%
void main(){
	printf("enter input: ");
	yylex();
}
int yywrap(){return 1;}
