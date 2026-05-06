%{
//definiton section    
%}

%% 
[0-9]*[.]{0,1}[0-9]+   {printf("valid");}
%%
int yywrap(){

}

int main(){
    yylex();
    return 0;
}
//user code section