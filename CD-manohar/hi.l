%{
 #include<stdio.h>
%}

%%
"HI" {printf("BYe");}
.* {printf("Wrong");}
%%
int yywrap(){
 
}
int main(){
	printf("enter input");
	yylex();
return 0;
}
