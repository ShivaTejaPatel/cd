%option noyywrap
%{
#include<stdio.h>
int i=0,r=0;
%}
%%
[-]?[0-9]+ {i++;}
[0-9]+[\.][0-9]+ {r++;}
%%
int main(){
  yylex();
  printf("count of integers %d \n",i);
  printf("count of floating no.s %d\n",r);
}
