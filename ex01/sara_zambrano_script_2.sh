#!/bin/bash
echo Exercici 2 Sara Zambrano. Verificacio de extensio
echo introduzca un fichero
read file
extension=`echo $file | cut -d "." -f2-`
echo "L'extensio del fitxer $file és $extension"
