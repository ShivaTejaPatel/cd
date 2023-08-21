%option noyywrap
%{
#include<stdio.h>
int n=0,sum,i;
%}
%%
[0-9]+ { n=atoi(yytext);
         i=n,sum=0;
         while(n>0){
	  sum=(sum*10)+(n%10);
	  n=n/10;}
	 if(i==sum){printf("palindrome");}
	 else{printf("not palindrome");}
	 }
%%
int main(){
      yylex();
}