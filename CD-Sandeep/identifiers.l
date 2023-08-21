%option noyywrap
%{
   #include<stdio.h>
%}
%%
if|else|while|for|print|do|return {printf("Keyword");}
[a-z]([a-z]|[0-9])* {printf("%s is an Identifier",yytext);}
[0-9]* {printf("Number");}
%%
int main(){
	printf("Enter the String\n");
	yylex();
	return 0;

}
