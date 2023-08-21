#include<stdio.h>
#include<string.h>
void follow(char c);
void first(char c);
void addToResult(char);
char result[20],a[20][20],c;
int i,j,k,n,m=0,choice;
void main(){
	printf("enter n value :");
	scanf("%d",&n);
	for(i=0;i<n;i++){
		//printf("enter p%d :",i+1);
		scanf("%s",a[i]);
	}
	do{
		m=0;
		printf("find follow of :");
		scanf(" %c",&c);
		follow(c);
		printf("follow(%c)={ ",c);
		for(i=0;i<m;i++){
			printf("%c ",result[i]);
		}
		printf("}\n");
		printf("enter choice as 1 :");
		scanf("%d",&choice);
	}
	while(choice==1);

}
void follow(char c){
	if(a[0][0]==c)addToResult('$');
	for(i=0;i<n;i++){
		for(j=2;j<strlen(a[i]);j++){
			if(a[i][j]==c){
				if(a[i][j+1]!='\0')
					first(a[i][j+1]);
				if(a[i][j+1]=='\0')
					follow(a[i][0]);
			}
		}
	}
}
void first(char c){
	if(!isupper(c)){
		addToResult(c);
	}
	for(k=0;k<n;k++){
		if(a[k][0]==c){
			if(a[k][2]=='$')
				follow(a[k][0]);
			else if(islower(a[k][2]))
				addToResult(a[k][2]);
			else
				first(a[k][2]);
		}
	}
}
void addToResult(char c){
	int i;
	for(i=0;i<=m;i++)
		if(result[i]==c)
			return;
	result[m++]=c;
}

/*
E=TA
A=+TA
B=*FB
T=FB
F=(E)
F=id
A=$
B=$

*/
