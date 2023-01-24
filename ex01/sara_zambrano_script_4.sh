#!/bin/bash
# Obtenir la data i l'hora actual
data_hora_actual=$(date +"%Y%m%d-%H%M%S")
# Crear els noms dels fitxers
fitxer1="in_1_Sara_Zambrano.txt"
fitxer2="in_1_Sara_Zambrano.txt"
fitxer3="in_1_Sara_Zambrano.txt"
fitxer4="in_1_Sara_Zambrano.txt"
echo "Exercici 4 Sara Zambrano. Compressió de fitxers"
# Crear els fitxers de text aleatoris
tr -dc A-Za-z0-9 </dev/urandom | head -c 2048 > $fitxer1
tr -dc A-Za-z0-9 </dev/urandom | head -c 2048 > $fitxer2
tr -dc A-Za-z0-9 </dev/urandom | head -c 2048 > $fitxer3
tr -dc A-Za-z0-9 </dev/urandom | head -c 2048 > $fitxer4

# Crear l'arxiu comprimit
nom_arxiu_comprimit="copia_sara_zambrano_${data_hora_actual}.tar.gz"
tar -cvzf $nom_arxiu_comprimit $fitxer1 $fitxer2 $fitxer3 $fitxer4
# Mostrar informació dels fitxers creats
ls -l $fitxer1 $fitxer2 $fitxer3 $fitxer4 $nom_arxiu_comprimit
