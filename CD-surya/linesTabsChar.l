%{
int c=0,l=0,t=0;
%}

%%
[a-zA-Z] {c++;}
"\n" {l++;}
"\t" {t++;}

"0"  {printf("lines: %d\n",l);
	printf("Character: %d\n",c);
	printf("Tabs: %d\n",t);
	l=0,t=0,c=0;
	printf("Input: ");
	}
%%

int yywrap(){}
void main(){
	printf("Input: ");
	yylex();
	
}