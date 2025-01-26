# Lex Programs for Compiler Design Lab CSP327
```
This repository contains Lex programs Compiler Design Lab  using **Lex** and **Bison**.
```
### E1: Design a Lexical Analyzer for C Language
```
This program identifies tokens in C language source code, including:
- Keywords
- Identifiers
- Operators
- Constants (Int, Float, Character)
- Special Symbols
- Strings

The Lex program reads a text as input and categorizes the tokens accordingly.
```
### E2: Question Paper Analyzer
```
This Lex program processes a question paper text and provides the following analysis:
1. Count the number of questions.
2. Identify how many questions have sub-parts and how many do not.
3. Count the total marks mentioned for each question.
4. Extract the date of the examination.
5. Extract the semester information.
6. Count different types of questions (e.g., What, Discuss, etc.).
7. Count various statistics like the number of words, lines, small letters, capital letters, digits, and special characters.
```
Sample Question Paper Input:
```
Shri Ramdeobaba College of Engineering and Management
Sem: VI
12/12/2024

Solve as per questions.
Q1(a): What is a compiler? [5Marks]
Q1(b): What is a software? [5Marks]
Q2(a): Explain the need for an assembler. [3Marks]
Q2(b): Discuss phases of compiler. [2Marks]
Q3: What is a parser? [5Marks]
Q4(a): What is error correction? [2Marks]
Q4(b): Explain SDTS. [3Marks]
```

### E3: Program Cleaner
```
This Lex program removes comments (both single-line and multi-line) from a C program.
The input is a C program, and the output is the same C program with comments removed.
```
### E4: Do as Directed
This Lex program processes the contents of a file and performs the following tasks:
1. Add 3 to numbers divisible by 7.
2. Add 4 to numbers divisible by 2.
3. Convert an alphabetical list to a numbered list.
   
Sample Input:
```
14
16
a) Bread
b) Butter
c) Magnets
d) Paint Brush
```
## Requirements

- **Lex** (Flex) must be installed on your system.
- **Yacc** (Bison) must be installed on your system.

### Installation Instructions:

# On Windows:

1. Download setup files:
   - Flex: [Download here](http://gnuwin32.sourceforge.net/packages/flex.htm)
   - Bison:[Download here](http://gnuwin32.sourceforge.net/packages/bison.htm)  
   Install both in `C:\GnuWin32` (not the default path).

2. Download C Setup (Dev-C++):
   [Download Dev-C++](https://sourceforge.net/projects/orwelldevcpp/)  
   Install in `C:\Dev-Cpp`.

3. Add to PATH variable: 
   Add these paths to the PATH environment variable:  
   - `C:\GnuWin32\bin`  
   - `C:\Dev-Cpp\MinGW64\bin`  
   - `C:\Dev-Cpp\MinGW64\libexec\gcc\x86_64-w64-mingw32\4.9.2`  
   - `C:\Dev-Cpp\MinGW64\x86_64-w64-mingw32\bin`  

4. Check installation:
   - Open Control Panel → System → Advanced System Settings → Environment Variables → Edit.  
   - Open Notepad and paste the given code, then save as `filename.l` (select "All Files" as the type).

5. Run and check:
   1. Open Command Prompt and type `cmd`.  
   2. Change directory to where `filename.l` is saved.  
   3. Run: `flex filename.l`.  
   4. Then compile: `gcc lex.yy.c`.  
   5. Run the output executable: `a.exe` and type any word to check.

# On LINUX:
1. Open Terminal.
2. Update: 
   `sudo apt-get update`
3. Install flex and bison:  
   `sudo apt-get install flex`  
   `sudo apt-get install bison`
4. Check installation:
   - Open a text editor: `gedit filename.l`  
   - Write and save the code  
   - Compile with LEX: `flex filename.l`  
   - Run C: `gcc lex.yy.c –lfl`  
   - Run final output: `./a.out`  
   - Type input and if it gives output, installation is successful.  
   - Exit with `Ctrl + Z`.

## How to Run

1. Clone this repository to your local machine:
   ```bash
   git clone https://github.com/vaishnavipaswan/Compiler-Design-Lab-CSP327.git
   cd Compiler-Design-Lab-CSP327
   ```
