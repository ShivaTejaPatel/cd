#include<stdio.h>
#include<string.h>
char a[20][20];
char r[20];
int n;
void Follow(char);
void addres(char);
void first(char);
main(){
    printf("enter the  n ");
    scanf("%d",&n);
    int i;
    for(i=0;i<n;i++){ 
        scanf(" %s",a[i]);
    }

    char c;
    char choice; 
    do{
        printf("Enter Follow of  ");
        scanf(" %c",&c);
        Follow(c);
        printf("the follow is { ");
        for(i=0;r[i]!='\0';i++){
            printf(" %c",r[i]);
        }
        printf("}\n");
        printf("Enter y to continue ");
        scanf(" %c",&choice);

    }while(choice=='y');

}
void Follow(char c){
    int i,j,k; 
    if(a[0][0]==c) addres('$');
    for(i=0;i<n;i++){
        for(j=2;j<strlen(a[i]);j++){
            if(a[i][j]==c){
                if(a[i][j+1]!='\0') 
                   {first(a[i][j+1]);}
                else{
                    Follow(a[i][0]);
                }

            } 
        }
    }
}
void first(char c){
    int i;
    if(!(isupper(c))){
        addres(c);
    }
    for(i=0;i<n;i++){
        if(a[i][0]==c){
            if(a[i][2]=='$'){
                Follow(a[i][0]);
            }
            else if(islower(a[i][2])){
                addres(a[i][2]);
            }
            else{
                first(a[i][2]);
            }
        }
    } 
}
void addres(char c){
    int k;
    for(k=0;r[k]!='\0';k++){
        if(r[k]==c){
            return;
        }
    }
    r[k]=c;
    r[k+1]='\0';
}
// S=aBDh
//   B=cC
//    C=bC
//    C=$
//    D=EF
//   E=g
//   E=$
//    F=f
//  F=$