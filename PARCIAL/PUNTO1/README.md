# analizador lexico con AWK

Este codigo de AWK analiza una un txt y clasifica los tokens segun su tipo, entre operadores, numeros enteros y numeros reales.

# Requisitos
- Tener AWK instalado (en Ubuntu esta por defecto)
- Un txt con los tokens a analizar

# Uso
Ejecuta el script con el siguiente comando:

$ awk -f expresiones.awk test.txt

expresines.awk es donde tenemos nuestro clasificador de Tokens entre +, ++, [0-9] y [0-9].[0-9]+ el cual es para numeros reales. Tambien teneoms nuesto txt llamado test.txt el cual es el que se analiza para clasificar los tokens que tiene.
