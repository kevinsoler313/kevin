#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX_LINE 1024

int contar_veces(FILE *archivo, const char *palabra) {
    char linea[MAX_LINE];
    int count = 0;
    size_t palabra_len = strlen(palabra);

    while (fgets(linea, sizeof(linea), archivo)) {
        char *ptr = linea;
        while ((ptr = strstr(ptr, palabra)) != NULL) {
            count++;
            ptr += palabra_len;
        }
    }
    return count;
}

int main(int argc, char *argv[]) {
    if (argc != 3) {
        fprintf(stderr, "Uso: %s <archivo.txt> <palabra>\n", argv[0]);
        return 1;
    }

    FILE *archivo = fopen(argv[1], "r");
    if (!archivo) {
        perror("Error al abrir el archivo");
        return 1;
    }

    int veces = contar_veces(archivo, argv[2]);
    fclose(archivo);

    printf("%s se repite %d veces en %s\n", argv[2], veces, argv[1]);

    return 0;
}

