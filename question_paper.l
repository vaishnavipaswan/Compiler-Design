%{
#include <stdio.h>
#include <string.h>
int questions = 0;
int sub_questions = 0;
int no_sub_questions = 0;
int total_marks = 0;
int what_count = 0;
int discuss_count = 0;
int explain_count = 0;
int words = 0;
int lines = 0;
int small_letters = 0;
int capital_letters = 0;
int digits = 0;
int special_chars = 0;
char semester[10];
char date[20];
%}

%%
^Sem:[ ][^\n]*      { strncpy(semester, yytext + 5, sizeof(semester) - 1); }
^[0-9]{1,2}"/"[0-9]{1,2}"/"[0-9]{4} { strncpy(date, yytext, sizeof(date) - 1); }
^Q[0-9]+:[ ]        { questions++; no_sub_questions++; }
^Q[0-9]+\([a-z]\):[ ] { questions++; sub_questions++;} 

\[[0-9]+Marks\]     { 
    int marks;
    sscanf(yytext, "[%dMarks]", &marks);
    total_marks += marks;
}

"what"|"What"{ what_count++; }
"discuss"|"Discuss" { discuss_count++; }
"explain"|"Explain" { explain_count++; }
[a-z]{ small_letters++; }
[A-Z]{ capital_letters++; }
[0-9]{ digits++; }
[^a-zA-Z0-9\t\n ]{ special_chars++; }
[A-Za-z]+{ words++; }
\n{ lines++; }
%%
int main() {
    printf("Enter the question paper text:\n\n");
    yylex();
    printf("\nQuestion Paper Analysis:\n");
    printf("===============================\n");
    printf("1. Total number of questions: %d\n", questions);
    printf("2a. Questions with sub-parts: %d\n", sub_questions);
    printf("2b. Questions without sub-parts: %d\n", no_sub_questions);
    printf("3. Total marks: %d\n", total_marks);
    printf("4. Date of examination: %s\n", date);
    printf("5. Semester: %s\n", semester);
    printf("\n6. Question types:\n");
    printf("   - What questions: %d\n", what_count);
    printf("   - Discuss questions: %d\n", discuss_count);
    printf("   - Explain questions: %d\n", explain_count);
    printf("\n7. Text statistics:\n");
    printf("   - Words: %d\n", words);
    printf("   - Lines: %d\n", lines);
    printf("   - Small letters: %d\n", small_letters);
    printf("   - Capital letters: %d\n", capital_letters);
    printf("   - Digits: %d\n", digits);
    printf("   - Special characters: %d\n", special_chars);
    
    return 0;
}

int yywrap() {
    return 1;
}
