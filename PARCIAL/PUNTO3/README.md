# comprender la gramatica de lambda

Este programa en Flex puede comprender la expresion lambda x: x ** 2, independientemente de sus espacios y variables como lo pueden ser la X y los numeros

# requisitos
-Un compilador de C (gcc).
-Tener instalado Flex en el equipo, para este caso Ubuntu (sudo apt install flex)
-Un archivo de texto con las expresiones a analizar

# compilacion
Para compilar el programa, usa los siguientes comandos en la terminal:

$ gcc lex.yy.c -o lexer -lfl

Esto genera un archivo llamado lexer el cual ejecutaremos junto con el archivo de texto donde tenemos nuestra expresion a analizar, esto lo haremos con el siguiente comando en la terminal:

$ ./lexer test.txt

En este caso da ACEPTA en la terminal ya que el archivo (test.txt) tiene (square = lambda x: x ** 2), el cual es una expresion aceptada
