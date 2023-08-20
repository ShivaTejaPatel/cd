%{
 int lc=0;
 int sc=0;
 int tc=0;
 int ch=0;
 int wc=0;
%}

%%
[\n] {lc++;wc++;}
[\t] {tc++;wc++;}
[ ] {sc++;wc++;}
[^\n\t ]+ {ch+=yyleng;}
%%
int yywrap(){

}
int main(){
 yylex();
 printf("lines count is %d \n",lc);
 printf("word count is %d \n",wc);
 printf("characters count is %d \n",ch);
 printf("tab count is %d \n",tc);
 printf("space count is %d \n",sc);
 return 0;
}
