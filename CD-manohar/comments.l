%{
 #include<stdio.h>
 #include<stdlib.h>
%}


%% 

"//"(.*)    {}       /* Match and ignore single-line comments */
"\/\*"[^*]*\*+([^/*][^*]*\*+)*\/   {}   /* Match and ignore multiline comments */
.          ECHO;                     /* Echo any other character */


%%

int yywrap(){
  return 1;
}
int main(){
  yyin=fopen("input.c","r");
  yyout=fopen("out.c","w");
  yylex();
  return 0;
}

