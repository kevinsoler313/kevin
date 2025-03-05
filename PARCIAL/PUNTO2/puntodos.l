%{
#include <stdio.h>
#include <stdlib.h> 
int error = 0;
%}

%%

lambda[[:space:]]?[a-zA-Z_][[:space:]]?[:][[:space:]]?[a-z][[:space:]]?(\*\*|\+|\-|\/)[[:space:]]?[0-9]+ { error = 1;}

[a-zA-Z]+ { /*IDENTIFICADOR */}

[=] { /*ASIGNADOR */}

\n { return 0; }
%%

int main(int argc, char *argv[]) {
    if (argc < 2) {
        fprintf(stderr, "Uso: %s <archivo.txt>\n", argv[0]);
        return 1;
    }

    FILE *archivo = fopen(argv[1], "r");
    if (!archivo) {
        perror("Error al abrir el archivo");
        return 1;
    }

    yyin = archivo;
    yylex();
    fclose(archivo);
    
    if (error == 1) {
    
    	printf("ACEPTA \n");
    
    }else{
    	printf("NO_ACEPTA \n");
    }
    return 0;
}

int yywrap() { return 1; }

