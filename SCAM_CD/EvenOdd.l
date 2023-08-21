%{
#include<stdio.h>
int m;
%}
%%
[0-9]+ {m=atoi(yytext);
	if(m%2==0) {printf("even");}
	else{printf("odd");}
	}
.* {printf("neither even nor odd");}

%%

void main(){
	printf("enter any number");
	yylex();
}
int yywrap(){return 1;}
