%{
 int valid_int=0;
 int valid_float=0;
%}

%%
[-+]?[0-9]* {valid_int++;}
[-+]?[0-9]*[.][0-9]* {valid_float++;}
%%

int yywrap(){

}

int main(){
  yylex();
  if(valid_int!=0){
     printf("yes valid Integer");
  }
  else if(valid_float!=0){
    printf("yes valid Float");
  }
  else{
    printf("not valid Integer/Float");
  }
}
