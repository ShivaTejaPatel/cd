%{
#include<stdio.h>
int fun(int);
int len=0;
%}

%%
[a-zA-Z0-9]+ {len=yyleng;fun(len);}
%%
int fun(int l){
	if(yytext[0]=='A'){
		if(len==3){
			printf("%s\t",yytext);
		}
	}
return 0;
}
int yywrap(){}
int main(){
	yylex();
	return 0;
}