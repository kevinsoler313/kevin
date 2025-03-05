%{
#include <stdio.h>
#include <string.h>

int lambda = 0;

%}

%%

lambda[[:space:]]+?[a-z]*[,]?[a-z]*?[[:space:]]?[:][[:space:]]?[a-z]*[[:space:]]?\*\*[[:space:]]?[0-9]+ { lambda = 1; }
[a-zA-Z_][a-zA-Z0-9_]*    { /* Identificadores */ }
=                           { /* Operador de asignación */ }
.|\n                        { /* Consumir cualquier otro carácter */ }

%%

int main(int argc, char *argv[]) {
    if (argc != 2) {
        printf("Uso: %s archivo.txt\n", argv[0]);
        return 1;
    }
    FILE *file = fopen(argv[1], "r");
    if (!file) {
        printf("Fallo con el archivo\n");
        return 1;
    }

    char linea[1024];
    while (fgets(linea, sizeof(linea), file)) { 
        lambda = 0;  

        yy_scan_string(linea); 
        yylex();

        if (lambda == 1) {
            printf("ACEPTA: %s", linea);
        } else {
            printf("NO ACEPTA: %s", linea);
        }
    }

    fclose(file);
    return 0;
}

