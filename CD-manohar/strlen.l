%{
#include<stdio.h>
int length;
%}
%%
[a-zA-Z0-9]+ {length=yyleng; printf("length %d",length);}

%%

int yywrap(){

}

int main(){
  yylex();
return 0;
}
