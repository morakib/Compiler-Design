%{
#include <stdio.h>
void yyerror(char *s);
int yylex();
%}

%token SUM NUM SUB ID INT SEMICOLON EQUAL 
%start cal

%%
cal: INT ID EQUAL NUM SEMICOLON ;
%%

int main()
{
    
    if(!yyparse())    printf("parsing successful");
    else printf("error");
}

void yyerror(char *s)
{
    fprintf(stderr,"error %s", s);
}