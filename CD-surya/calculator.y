%{
#include<stdio.h>
int flag =0;
int yyerror(char *);
int yylex();
%}

%token NUMBER '+' '-' '*' '/' '%' '(' ')'
%left '+' '-'
%left '*' '/' '%'
%left '(' ')'

%%
A : E {
printf("\nResult:%d\n",$1);
return 0;
};

E : E '+' E { $$ = $1 + $3;}
| E '-' E { $$ = $1 - $3;}
| E '*' E { $$  = $1 * $3;}
| E '/' E { $$ = $1 / $3;}
| E '%' E { $$ = $1 % $3;}
| '(' E ')' { $$ = $2;}
E : NUMBER { $$ = $1;};
%%

void main(){
	printf("Enter an arithmetic expression: ");
	yyparse();
	if(flag==0)
	printf("\nValid");
}

int yyerror(char *s){
	printf("\nINvalid");
	flag = 1;
}