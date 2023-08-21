#include<stdio.h>
#include<ctype.h>
#include<string.h>
void first(char[],char);
void resultset(char[],char);
char productionset[10][10];
int n;
int main(){
	int i;
	char choice;
	char c;
	char result[20];
	printf("enter no of productions : ");
	scanf("%d",&n);
	for(i=0;i<n;i++){
		printf("enter production %d : ",i+1);
		scanf(" %s",productionset[i]);
	}
	choice='y';
	while(choice=='y'){
		//scanf("%s",&c);
		printf("find first of-");
		scanf(" %c",&c);
		first(result,c);
		printf("first of %c  {",c);
		for(i=0;result[i]!='\0';i++)
			printf("%c,",result[i]);			
		printf("}\n");
		printf("y to continue :");
		scanf(" %c",&choice);
	}
}
void first(char* result,char c){ 
	int i,j,k;
	char subres[20];
	int foundepsilon;
	subres[0]='\0';
	result[0]='\0';
	if(!(isupper(c))){
		resultset(result,c);
		return;
	}
	for(i=0;i<n;i++){
		if(productionset[i][0]==c){
			if(productionset[i][2]=='$')
				resultset(result,'$');
			else{
				j=2;
				while(productionset[i][j]!='\0'){
					foundepsilon=0;
					first(subres,productionset[i][j]);
					for(k=0;subres[k]!='\0';k++)
						resultset(result,subres[k]);
					for(k=0;subres[k]!='\0';k++){
						if(subres[k]=='$'){
							foundepsilon=1;
							break;
						}
					}
					if(!foundepsilon){
						break;
					}
					j++;
				}
			}
		}
	}
	return;
}
void resultset(char result[],char val){
	int k;
	for(k=0;result[k]!='\0';k++){
		if(result[k]==val)
			return;
	}
	result[k]=val;
	result[k+1]='\0';
}
/*
S=AaAb
S=BaBb
A=$
B=$
*/

