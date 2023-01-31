#!/bin/bash
# Obtenir la data i l'hora actual
fitxer=$(date +"copia-sara_%Y%m%d-%H%M%S.tar.gz")
# Crear els noms dels fitxers
fitxer1="in_1_Sara_Zambrano.txt"
fitxer2="in_2_Sara_Zambrano.txt"
fitxer3="in_3_Sara_Zambrano.txt"
fitxer4="in_4_Sara_Zambrano.txt"
echo "Exercici 4 Sara Zambrano. Compressió de fitxers"
# Crear els fitxers de text aleatoris
tr -dc A-Za-z0-9 </dev/urandom | head -c 2048 > $fitxer1
tr -dc A-Za-z0-9 </dev/urandom | head -c 2048 > $fitxer2
tr -dc A-Za-z0-9 </dev/urandom | head -c 2048 > $fitxer3
tr -dc A-Za-z0-9 </dev/urandom | head -c 2048 > $fitxer4

# Crear l'arxiu comprimit
tar -cvzf $fitxer in_*_Sara_Zambrano.txt
rm in_*_Sara_Zambrano.txt

# Mostrar informació dels fitxers creats
ls -l $fitxer
