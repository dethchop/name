%{
#include <stdio.h>
%}

%%

.*Evaa.* { printf("Rejected\n"); }
.*evaa.* { printf("Rejected\n"); }
.* { printf("Accepted\n"); }

%%
int yywrap()

{
return 1;
}

int main()
{
printf("Enter String: ");
yylex();
return 0;
}
