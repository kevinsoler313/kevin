Para este punto se busca hacer un analizador de lexico para la expresion lambda en python
Se utilizo en un archivo flex llamado punto2.l
ejemplo:
s = lambda x: x ** 2
print()

salida
ACEPTA
NO ACEPTA


ejemplo de uso:
flex punto2.l
gcc lex.yy.c -o punto2 -lfl
./punto2 pruebapunto2.txt 

el archivo txt tiene este contenido
s = lambda x: x ** 2
print()


