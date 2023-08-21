%option noyywrap
%{
#include<stdio.h>
int n=0;
%}
%%
[0-9]+ { n=atoi(yytext);
         if(n%2==0){
	   printf("it is even");}
	 else{
	     printf("it is odd");}
	}
%%
int main(){
      yylex();
      return 0;
      }