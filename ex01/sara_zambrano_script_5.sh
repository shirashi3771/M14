#!/bin/bash
# agafar el primer argument.
file_sara=$1
# comprovar si el fichero -f existe
if [ -f $file_sara ]; then
echo "Exercici 5 Sara Zambrano. Descompressió de fitxers"
echo "Introdueixi nom de carpeta de destí:"
read folder_sara
# Crear el destin de la carpeta
mkdir $folder_sara
# descompresió
tar -zxvf $file_sara -C $folder_sara/

# ls de la carpeta
ls -l $folder_sara
else
echo "El fitxer $file_sara no existeix"
fi
