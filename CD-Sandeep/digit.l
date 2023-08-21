%option noyywrap
%{
 #include<stdio.h>
%}
%%
[-]?[0-9]+ {printf("it is digit %s",yytext);}
%%
int main(){
   printf("enter the digit");
   yylex();
   }