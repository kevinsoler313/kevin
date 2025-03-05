En este ejercicio, se realizó una comparación de rendimiento entre Python y C mediante el cálculo iterativo del factorial de cinco números dentro de un bucle. Python es un lenguaje interpretado, mientras que C es un lenguaje compilado, por lo que se espera que haya diferencias en la eficiencia de ejecución.

Los resultados obtenidos muestran que C tuvo un tiempo total de ejecución de 0.000096 segundos, mientras que Python tardó 0.0000082 segundos. A pesar de que en este caso Python fue más rápido según las mediciones, en escenarios más complejos C suele ser más eficiente debido a su naturaleza compilada, lo que permite una ejecución directa en el hardware sin necesidad de interpretación en tiempo real.

Esto demuestra que los lenguajes compilados generalmente ofrecen un mejor rendimiento en comparación con los lenguajes interpretados, ya que el código en C se traduce completamente a lenguaje máquina antes de ejecutarse. En contraste, Python debe interpretar y procesar cada instrucción en tiempo de ejecución, lo que puede generar una sobrecarga en ciertos casos.
Ejemplo de Uso

Para ejecutar el código en C, primero es necesario compilarlo y luego ejecutarlo con los siguientes comandos:

gcc factorial.c -o f 
./f 

Para ejecutar el código en Python, basta con ejecutar el siguiente comando en la terminal:

python3 factorial.py 
