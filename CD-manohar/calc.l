/*%{
#include<stdio.h>
#include "y.lab.h"
extern int yylval;
%}

%%
[0-9]+{yylval=atoi(yytext); return NUMBER;}
[\t];
[\n] return 0;
. return yytext[0];
%%
yywrap(){

}*/


%{
#include <stdio.h>
#include "y.tab.h"
extern int yylval;
%}

%%
[0-9]+ { yylval = atoi(yytext); return NUMBER; }
[\t]  ; /* Ignore tabs */
[\n]  return 0; /* Ignore newlines */
.     return yytext[0]; /* Return any other character as is */
%%
int yywrap() {
    // Optional wrapping-up function, you can leave it empty.
    return 1;
}

