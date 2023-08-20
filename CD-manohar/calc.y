/*%{
  #include<stdio.h>
  int flag=0;
%}
% token NUMBER
% left '+' '-'
% left '*' '/' '%'
% left '(' ')'
%%
Arithmetic Expression: E{
  printf("\n Result =%d\n",$$);
  return 0;
}
E:E'+'E {$$ =$1+$3;}
|E '-' E {$$=$1-$3;}
|E'*'E {$$ =$1*$3;}
|E '/' E {$$=$1/$3;}
|E'%'E {$$ =$1%$3;}
|'('E')'{$$=$2;}
|NUMBER {$$=$1;}
;
%%

void main(){
 printf("Enter Arithmetic Expression which can have operations ADD,SUB,MUL DIV&ROIND BRACKET\n");
 yyparse();
 if(flag==0){
   printf("entered arithmetic expression is valid\n");
 } 
}
void yyerror(){
  printf("\n Entered arithmetic expression is invalid \n");
  flag=1;
}
*/

%{
  #include <stdio.h>
  int flag = 0;
  int yylex();
  void yyerror(const char* s);
%}

%token NUMBER
%left '+' '-'
%left '*' '/' '%'
%left '(' ')'

%%
Arithmetic_Expression: E {
  printf("\n Result = %d\n", $1);
  return 0;
}

E: E '+' E { $$ = $1 + $3; }
 | E '-' E { $$ = $1 - $3; }
 | E '*' E { $$ = $1 * $3; }
 | E '/' E { $$ = $1 / $3; }
 | E '%' E { $$ = $1 % $3; }
 | '(' E ')' { $$ = $2; }
 | NUMBER { $$ = $1; }
 ;
%%

int main() {
  printf("Enter Arithmetic Expression which can have operations ADD, SUB, MUL, DIV & ROUND BRACKET\n");
  yyparse();
  if (flag == 0) {
    printf("Entered arithmetic expression is valid\n");
  }
}

void yyerror(const char* s) {
  printf("\nEntered arithmetic expression is invalid\n");
  flag = 1;
}

