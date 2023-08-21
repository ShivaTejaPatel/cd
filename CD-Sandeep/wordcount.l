%option noyywrap
%{
	#include<stdio.h>
	int lc=0,wc=0,ch=0,c=0,tc=0,sc=0;
%}

%%
\n {lc++;}
([ ]) {sc++;}
\t {tc++;}
. {c++;ch++;}
[a-zA-A0-9]+ {wc++;c=c+yyleng;} 
%%
int main()
{
	yylex();
	printf("lines count is %d\n",lc);
	printf("spaces count is %d\n",sc); 
	printf("tabs count is %d\n",tc);
	printf("characters count is %d\n",c);
	printf("words count is %d\n",wc);



	return 0;
}