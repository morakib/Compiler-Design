/* noyywrap off kora hoise bcz barbar input jate na nei */
%option noyywrap
%{
    #include "cal.tab.h"
/* header files jodi lagে */
%}



/*macro define kora hoi */

digit [0-9]
number {digit}+
sp [\n\t]
ws {sp}+
id [a-zA-Z_][a-zA-Z0-9_]*


%%
"int"     { return (INT); }
"+"       { return(SUM);  }
"-"       { return(SUB);  }
{number}  { return (NUM); }
{id}      { return (ID); }
"="   { return (EQUAL); }
";" { return (SEMICOLON); }
{ws}      { /* ignore whitespace */ }
%%

/* rules -> DFA/NFA convert hobe lex.yy.c file e
   then .c te convert hobe
   then a.exe file e convert hobe
   then a.exe file run korle input nibe and output dibe 
*/

