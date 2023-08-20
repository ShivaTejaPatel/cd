%{
#include <stdio.h>
%}

/* Definitions */

%%

[Aa][a-zA-Z]{2}[ ]   { printf("%s\n", yytext); }
[a-zA-Z]{3}        /* Ignore other words of length 3 */
.|\n             /* Ignore other characters and newlines */

%%

int yywrap(){

}

int main() {
    printf("Enter a string: ");
    yylex();
    return 0;
}

