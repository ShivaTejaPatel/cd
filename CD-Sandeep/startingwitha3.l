%option noyywrap
%{
	#include<stdio.h>
	int l=0;
%}
%%
[a-zA-Z0-9]+ {
		if(yytext[0]=='a'){
		  if(yyleng==3){
		    printf("%s",yytext);
		}
	      }
	      }
%%
main(){
	yylex();
	 
}