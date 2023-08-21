%option noyywrap
%{
#include<stdio.h>
%}
%%
[0-9] {printf("%s is digit",yytext);}
%%
int main()
{
  printf("Enter any digit:\n");
  yylex();
  return 0;
}