
Este ejercicio busca reconocer los tokens dados por una entrada. Los tokens reconocidos incluyen + como suma, ++ como incremento, números enteros como 12 y números reales como 12.3. El programa analiza el contenido de un archivo de texto, identifica los tokens y muestra su clasificación en la salida estándar. 


Para ejecutarlo, usa el comando awk -f punto1.awk pruebatoken.txt, 
donde punto1.awk contiene la implementación y pruebatoken.txt es el archivo con los tokens a evaluar. Por ejemplo, si el archivo de entrada contiene + 12 ++ 12.3, la salida será + -> suma, 12 -> entero, ++ -> incremento y 12.3 -> real. 
