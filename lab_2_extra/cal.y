%{
#include <stdio.h>
#include <stdlib.h>
void yyerror(char *s);
int yylex();
%}

%token INT IF ELSE WHILE NUM ID SEMICOLON EQUAL SUM SUB LPAREN RPAREN LBRACE RBRACE RELOP
%start program

%%

program : stmt_list ;

stmt_list : stmt_list stmt | stmt ;

stmt:
    INT ID EQUAL NUM SEMICOLON        { printf("Assignment matched\n"); }
    | IF LPAREN condition RPAREN block { printf("If statement matched\n"); }
    | IF LPAREN condition RPAREN block ELSE block { printf("If-Else statement matched\n"); }
    | WHILE LPAREN condition RPAREN block { printf("While loop matched\n"); }
    ;

block : LBRACE stmt_list RBRACE | stmt;

condition: ID RELOP NUM | ID RELOP ID;

%%

int main()
{
    printf("Enter code:\n");
    if(!yyparse()) printf("\nParsing successful!\n");
    else printf("\nParsing failed.\n");
    return 0;
}

void yyerror(char *s)
{
    fprintf(stderr, "Error: %s\n", s);
}