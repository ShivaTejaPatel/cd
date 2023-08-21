%option noyywrap
%{
 #include<stdio.h>
 int v=0;
 int c=0;
%}
%%
[aeiouAEIOU] {v++;}
[^][aeiouAEIOU] {c++;}
[0-9]+ {}
%%
int main(){
   printf("enter something \n");
   yylex();
   printf("the no. of consonents %d \n",c-1);
   printf("the no. of vowels %d \n",v);
   }