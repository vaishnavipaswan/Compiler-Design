%{
#include <stdio.h>
#include <string.h>
char output[10000]; 
int output_index = 0; 
int in= 0; 
%}
%%
"/*" { in = 1; } 
"*/" {in= 0;} 
"//".* {  }
[ \t\n]+ { output[output_index++] = yytext[0]; }
.   { 
       if (!in) {
	output[output_index++]=yytext[0];
        }
}
%%
int main() {
    printf("Enter your C file:\n\n");
    yylex(); 
    output[output_index] = '\0'; 
    printf("\n CODE AFTER REMOVING COMMENTS \n");
    printf("%s", output);
    return 0;
}
int yywrap() {
    return 1;
}
