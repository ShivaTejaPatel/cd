%{
#include<stdio.h>
int yyerror(char *s);
%}
%token digit
%%
A : S {$$=$1; printf("Equivalent Decimal Value is :%d",$$);}
S : S digit {$$=2*$1+$2;}
S : digit {$1=yylval;}
%%
int main()
{
printf("Enter binary number: ");
yyparse();
return 0;
}
int yyerror(char *s)
{
printf("%s",s);
return 0;
}
