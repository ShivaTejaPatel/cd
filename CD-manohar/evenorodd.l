%{
 #include<stdio.h>
 int m;
%}
%%
[0-9]+ { m=atoi(yytext);
   if(m%2==0){
     printf("even");
   }
   else{
     printf("0dd");
   }
 }
.* {printf("not even not odd");}
%%

int yywrap(){


}
int main(){
    printf("enter");
    yylex();
return 0;
}
