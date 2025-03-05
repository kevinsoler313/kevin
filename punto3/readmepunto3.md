En este punto, se desarrolló un programa en C que permite contar cuántas veces se repite una palabra específica dentro de un archivo de texto. El programa lee el archivo línea por línea, busca la palabra indicada y muestra la cantidad total de coincidencias encontradas.

Se implementó una lógica eficiente para procesar el archivo sin cargarlo completamente en memoria, asegurando un rendimiento óptimo incluso en archivos grandes.
Ejemplo de Uso

Para compilar y ejecutar el programa, sigue estos pasos en la terminal:

gcc punto3.c -o contador 
./contador pruebac.txt arroz 

El programa buscará la palabra "arroz" en el archivo pruebac.txt y mostrará cuántas veces aparece en su contenido. 
