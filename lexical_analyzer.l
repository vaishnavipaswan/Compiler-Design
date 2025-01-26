%{
#include <stdio.h>
#include <string.h>
int lines = 0, words = 0, s_letters = 0, c_letters = 0, num = 0, spl_char = 0, characters = 0, total = 0;
%}

%%
\n { lines++; words++; characters++; }                              
[ \t]+ { words++; characters += strlen(yytext); }                                      
[A-Z]  { c_letters++; characters++; printf("Capital letter: %s\n", yytext); }  
[a-z]  { s_letters++; characters++; printf("Small letter: %s\n", yytext); }   
[0-9]+\.[0-9]+ { num++; characters += strlen(yytext); printf("Float constant: %s\n", yytext); }
[0-9]+ { num++; characters += strlen(yytext); printf("Integer constant: %s\n", yytext); }      
\'[^\']\'      { characters += strlen(yytext); printf("Character constant: %s\n", yytext); }          
\"[^\"]*\"     { characters += strlen(yytext); printf("String constant: %s\n", yytext); }             
"auto"|"break"|"case"|"char"|"const"|"continue"|"default"|"do"|"double"|"else"|"enum"|"extern"|"float"|"for"|"goto"|"if"|"inline"|"int"|"long"|"register"|"restrict"|"return"|"short"|"signed"|"sizeof"|"static"|"struct"|"switch"|"typedef"|"union"|"unsigned"|"void"|"volatile"|"while" { 
                      characters += strlen(yytext);
                      printf("Keyword: %s\n", yytext); }                     
[_a-zA-Z][_a-zA-Z0-9]* { characters += strlen(yytext); printf("Identifier: %s\n", yytext); }               
[+\-*/%=<>!&|^] { characters += strlen(yytext); printf("Operator: %s\n", yytext); }                 
[{}()\[\],;:]   { spl_char++; characters += strlen(yytext); printf("Special symbol: %s\n", yytext); } 
.               { spl_char++; characters += strlen(yytext); printf("Special character: %s\n", yytext); } 
%%

int main(void)
{
    yylex();                                                          
    total = characters;
    printf("\nThis File contains:");
    printf("\n\t%d lines", lines);
    printf("\n\t%d words", words);
    printf("\n\t%d small letters", s_letters);
    printf("\n\t%d capital letters", c_letters);
    printf("\n\t%d digits", num);
    printf("\n\t%d special characters", spl_char);
    printf("\n\tIn total %d characters.\n", total);
    return 0;
}

int yywrap()
{
    return 1;
}
