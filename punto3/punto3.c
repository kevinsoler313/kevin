#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX_LINE 1024

int contarCoincidencias(FILE *file, const char *key) {
    char linea[MAX_LINE];
    int contador = 0;
    size_t key_len = strlen(key);

    while (fgets(linea, sizeof(linea), file)) {
        char *ptr = linea;
        while ((ptr = strstr(ptr, key)) != NULL) { 
            contador++;
            ptr += key_len; 
        }
    }

    return contador;
}

int main(int argc, char *argv[]) {
    if (argc != 3) {
        printf("Uso: %s archivo.txt palabra\n", argv[0]);
        return 1;
    }

    FILE *file = fopen(argv[1], "r");
    if (!file) {
        printf("Error al abrir el archivo\n");
        return 1;
    }

    int repeticiones = contarCoincidencias(file, argv[2]);
    fclose(file);

    printf("'%s' se repite %d veces en el texto.\n", argv[2], repeticiones);
    
    return 0;
}

