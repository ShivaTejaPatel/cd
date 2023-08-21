%option noyywrap
%{
  int v=0,c=0;
%}
%%
[aeiouAEIOU] {v++;}
[A-Za-z] {c++;}
%%
int main()
{
  printf("Enter any string: ");
  yylex();
  printf("No of vowels=%d",v);
  printf("\nNo.of consonants=%d",c);
  return 0;
}
 