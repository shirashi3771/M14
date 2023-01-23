#!/bin/bash
# Obtenir la data i l'hora actual
data_hora_actual=$(date +"%Y%m%d-%H%M%S")
# Crear el nom del fitxer
nom_fitxer="Sara_Zambrano_Rodriguez_${data_hora_actual}.txt"
echo "Exercici 3 Sara Zambrano. Creació de fitxers"
# Crear un fitxer de prova
#head -c BYTES.
tr -dc A-Za-z0-9 </dev/urandom | head -c 1024 > $nom_fitxer
# Mostrar informació del fitxer creat
ls -l $nom_fitxer
