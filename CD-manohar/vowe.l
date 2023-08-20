%{
  int vow_count=0;
  int const_count=0;
  int num_count=0;
%}
%%
[aeiouAEIOU] {vow_count++;}
[a-zA-Z] {const_count++;}
[0-9] {num_count++;}
%%
int yywrap(){}
int main(){
  printf("enter the string of vowels and consonants");
  yylex();
  printf("number of vowels %d\n",vow_count);
  printf(" number of consonants %d\n",const_count);
  printf("number of num_count %d\n",num_count);
  return 0;
  
}

