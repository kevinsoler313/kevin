En este punto, se desarrolló un analizador léxico utilizando Flex para reconocer y validar expresiones lambda en Python. El analizador verifica si una expresión en un archivo de texto cumple con la sintaxis esperada de las funciones lambda y muestra si la expresión es aceptada o no.

El archivo punto2.l contiene las reglas léxicas necesarias para identificar correctamente las expresiones lambda y otras estructuras del lenguaje. Si la expresión cumple con la gramática definida, el programa imprimirá "ACEPTA", de lo contrario, mostrará "NO ACEPTA".
Ejemplo de Uso

Para compilar y ejecutar el programa, sigue estos pasos en la terminal:

flex punto2.l  
gcc lex.yy.c -o punto2 -lfl  
./punto2 pruebapunto2.txt  

El archivo pruebapunto2.txt debe contener una expresión lambda en Python, como la siguiente:

s = lambda x: x ** 2
print()

Salida Esperada

Si la expresión es válida, la salida será:

ACEPTA  

Si la expresión no cumple con la gramática definida, se mostrará:

NO ACEPTA  
