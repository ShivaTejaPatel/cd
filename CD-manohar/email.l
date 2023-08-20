%{
%}
%%  
^"b"[0-9][1-9][0-9]{4}"@rgukt.ac.in"$ {printf("valid email");}
.* { printf("invalid email");}
%%	
int yywrap(){

}
int main(){
   printf("enter the email ");
   yylex();
return 0;
}
