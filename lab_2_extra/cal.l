%option noyywrap
%{
    #include "cal.tab.h"
%}

digit [0-9]
number {digit}+
id [a-zA-Z_][a-zA-Z0-9_]*
ws [ \n\t]+

%%
"int"      { return INT; }
"if"       { return IF; }
"else"     { return ELSE; }
"while"    { return WHILE; }
{number}   { return NUM; }
{id}       { return ID; }
"="        { return EQUAL; }
"+"        { return SUM; }
"-"        { return SUB; }
";"        { return SEMICOLON; }
"("        { return LPAREN; }
")"        { return RPAREN; }
"{"        { return LBRACE; }
"}"        { return RBRACE; }
"<"        { return RELOP; }
">"        { return RELOP; }
{ws}       { /* ignore */ }
.          { return yytext[0]; }
%%