%option noyywrap
%{
  int lc=0,wc=0,cc=0,tc=0,sc=0;
%}
%%
[\n] {lc++;}
[ ] {sc++;}
[\t] {tc++;}// [\t ]+ {sc++;}
[^\n\t ]+ {wc++;cc=cc+yyleng;}
%%
int main()
{ 
  printf("Enter any sentence: ");
  yylex();
  printf("No.of lines: %d",lc);
  printf("\nNo.of spaces: %d",sc);
  printf("\nNo.of tabs: %d",tc);
  printf("\nNo.of characters: %d",cc);
  printf("\nNo.of words: %d",wc);
  return 0;
}
