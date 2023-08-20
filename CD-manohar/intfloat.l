%{
   #include<stdio.h>
   int numofint=0;
   int numoffloat=0;
%}

%%
  
[0-9]+"."+[0-9]+ {printf("Decimal Number %s \n",yytext);numoffloat++;}
[0-9]+ { printf("Integer Number %s \n",yytext); numofint++;}

%%

int yywrap(){
  
}

int main(){
  yylex();
  printf("number of decimal numbers %d \n number of Integer Numbers %d ",numoffloat,numofint);
  return 0;
}
