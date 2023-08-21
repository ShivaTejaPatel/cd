%{
int wc=0;
%}
%%
[a-zA-Z]* {wc++;}
"\n" {printf("%d",wc);}
%%
int yywrap(void){}
main()
{
yylex();
}