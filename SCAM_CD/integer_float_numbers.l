%option noyywrap
%{
%}
%%
[-]?[0-9]+"."[0-9]+ {printf("\n%s is floating point number",yytext);}
[-]?[0-9]+ {printf("\n%s is integer",yytext);}
"\n" {exit(0);}
%%
int main()
{
  printf("Enter numbers:  ");
  yylex();
  return 0;
}