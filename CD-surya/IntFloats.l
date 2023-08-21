%{
int f=0,i=0;
%}

%%
[-]?[0-9]+ {i++;}
[-]?[0-9]+[\.][0-9]+ {f++;}
"\n"  {printf("Integers: %d\n",i);
	printf("Floating point: %d\n",f);
	f=0,i=0;
	printf("Input: ");
	}
%%

int yywrap(){}
void main(){
	printf("Input: ");
	yylex();
	
}