#include<stdio.h>
#include<stdlib.h>
int nP=0,n=0;
char prod[10][10], res[10];
void first(char);
void follow(char);
int main()
{
	int i,j,c;
	char s,ch;
	printf("No.of Productions: ");
	scanf("%d",&nP);
	for(i=0;i<nP;i++)
		scanf("%s%c",prod[i],&s);
	do{
		n=0;
		printf("Find First of :");
		scanf("%c",&ch);
		follow(ch);
		printf("Follow(%c): {",ch);
		for(i=0;i<n;i++)
			printf("%c ,",res[i]);
		printf("}\n");
		printf("Enter 1 to Continue: ");
		scanf("%d%c",&c,&s);
	}while(c==1);
}
void follow(char ch)
{
	int i,j;
	if(prod[0][0]==ch)
		addResult('$');
	for(i=0;i<nP;i++)
	{
		for(j=2;j<strlen(prod[i]);j++)
		{
			if(prod[i][j]==ch)
			{
				if(prod[i][j+1]!='\0')
					first(prod[i][j+1]);
				if(prod[i][j+1]=='\0' && prod[i][0]!=ch)
					follow(prod[i][0]);
			}
		}
	}
}
void first(char ch)
{
	int i;
	if(!(isupper(ch)))
		addResult(ch);
	for(i=0;i<nP;i++)
	{
		if(prod[i][0]==ch)
		{
			if(prod[i][2]=='#')
				follow(prod[i][0]);
			else if(islower(prod[i][2]))
				addResult(prod[i][2]);
			else if(prod[i][2]!=ch)
				first(prod[i][2]);
		}
	}
}
void addResult(char ch)
{
	int i;
	for(i=0;i<n;i++)
		if(res[i]==ch)
			return;
	res[n++]=ch;
}
/*
8
E=TR
R=+TR
R=#
T=FY
Y=*FY
Y=#
F=(E)
F=i
*/
/*
9
S=aBDh     {$ ,}
B=cC       {g, f, h}
C=bC       {g, f, h}
C=#
D=EF       {h}
E=g        {f, h}
E=#
F=f        {h}
F=#
*/
