#!/bin/bash
#Desarollado por Alejandro Garcia
#Este codigo pregunta datos covid


#El primer paso es elegir el pais
#Creamos una variable
pais_de_interes=$1
#Enviar mensaje de inicio
#Con el signo de "$" y el nombre de la variable imprime el valor que esta adentro de l avariable
echo "Analizando datos de $pais_de_interes"

#Filtrar datos del pais de interes

grep $pais_de_interes owid-covid-data.tsv \
| cut -f3,4,6 \
| sort -k3 -n \
| tail -n1 > dia_mas_casos.tmp

#Anunciamos la respuesta
echo "El dia con mas casos fue" 
cat dia_mas_casos.tmp

#Borrar archivos intermedios
rm *.tmp



