%{
#include <stdio.h>
#include <string.h>
#include <ctype.h>

int list_number = 1; 
%}

%%

[0-9]+ {
    int num = atoi(yytext);
    if (num % 7 == 0) {
        num += 3; 
    } else if (num % 2 == 0) {
        num += 4; 
    }
    printf("%d\n", num); 
}

[a-zA-Z]\)[^\n]* {
    printf("%d) %s\n", list_number++, yytext + 3); 
}
%%

int main() {
    printf("Enter your input:\n");
    yylex(); 
    return 0;
}

int yywrap() {
    return 1;
}
