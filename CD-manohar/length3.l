%{
#include <stdio.h>
int length;
void fun(int l); // Function prototype declaration
%}

%%
[a-zA-Z0-9]+ { length = yyleng; fun(length); }
%%

void fun(int l) {
    if (yytext[0] == 'A' && l==3) {
            printf("%s is word length 3", yytext);
    }
}

int yywrap() {
    // Some code here if needed
    return 1;
}

int main() {
    yylex();
    return 0;
}

