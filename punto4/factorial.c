#include <stdio.h>
#include <time.h>

unsigned long long factorial(int n) {
    unsigned long long fact = 1;
    for (int i = 2; i <= n; i++) {
        fact *= i;
    }
    return fact;
}

int main() {
    int n = 30;
    int iteracion = 5;
    int temp_n = n;  

    clock_t comienzo, final;
    double tiempo;

    comienzo = clock(); 

    for (int i = 0; i < iteracion; i++) {
        temp_n -= 5;
        unsigned long long resultado = factorial(temp_n);
        printf("Factorial de %d = %llu\n", temp_n, resultado);
    }

    final = clock(); 

    tiempo = (double)(final - comienzo) / CLOCKS_PER_SEC; 

    printf("Tiempo: %f segundos\n", tiempo);

    return 0;
}

