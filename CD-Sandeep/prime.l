%option noyywrap
%{
	#include<stdio.h>
	int n=0,i,f;
%}
%%
[0-9]+ {n=atoi(yytext);
	f=1;
	for(i=2;i<n;i++){
		if(n%i==0){
			f=0;
			break;
		}
	}
	if(f==0){
		printf("It is not prime");}
	else{
		printf("It is prime");}
	    
	}
		
%%
int main(){
	printf("enter the no.\n");
	yylex();
	}