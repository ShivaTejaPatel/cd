%{
#include<stdio.h>
int flag=0;
extern  yylval;
int yylex();
void yyerror();
%}
%token NUMBER
%left '+' '-'
%left '*' '/'
%left '(' ')'

%%
starting : E{}
E:E '+' E {printf(" + ");}
  |E '-' E {printf(" - ");}
  |E '*' E {printf(" * ");}
  |E '/' E {printf(" / ");}   
  |'(' E ')' {}   
  |NUMBER {printf(" %c ",yylval);};
%%
void main()
{
	printf("Enter a arithemetic expression : ");
	yyparse();
	if(flag==0)
	{
		printf("\nvalid");
	}
}
void yyerror()
{
	printf("\ninvalid");
	flag=1;
}

