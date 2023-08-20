%{
 #include<stdio.h>
 
%}

%%
[<>=!]=? {printf("Relational operator %s",yytext);}
.* {printf("not a rel");}
%%
int yywrap(){

}
int main(){
 printf("enter the input");
 yylex();
return 0;
}
