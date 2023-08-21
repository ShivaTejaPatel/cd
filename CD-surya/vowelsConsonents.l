%{
int vc=0,cc=0;
%}

%%
[aeiouAEIOU] {vc++;}
[a-zA-Z] {cc++;}

"\n"  {printf("Vowels: %d\n",vc);
	printf("Consonents: %d\n",cc);
	vc = 0,cc=0;}
%%

int yywrap(){}
void main(){
	yylex();
	
}