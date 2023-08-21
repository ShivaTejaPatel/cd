%option noyywrap
%{
  int len;
%}
%%
[a-zA-z0-9]+ {len=yyleng;fun(len);}
"\n" {exit(0);}
%%
fun(int l)
{
   if(yytext[0]=='A')
   {
    if(l==3)
    {
      printf("\n%s is starting with A and of length 3",yytext);
    }
   }
}
int main()
{
 printf("Enter any sentence:");
 yylex();
 return 0;
}
