import time

def factorial(n):
    fact = 1
    for i in range(2, n + 1):
        fact *= i
    return fact

n = 30  

comienzo = time.time()
for i in range(1,6):
    n-=5
    resultado = factorial(n)
    print(f"FActorial de {n} = {resultado}")
final = time.time()

print(f"Tiempo en Python: {(final - comienzo) % 60} segundos")

