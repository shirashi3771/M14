#!/bin/bash

#verfico que tiene tres parametros

#si numero de parametros es 3

#### parametros ok

#sino

#### parametros k0, salimos

if [ $# -eq 3 ]; then
echo parametros correctos
else
echo parametros incorrectos
exit
fi


echo siguiente

#compruebo que ficheros existen
# [ $1 -f || ]

ficheros=("$1" "$2" "$3")
for fichero in "${ficheros[@]}"; do
if [ ! -f "$ficheros" ]; then
echo "Error: El fichero $ficheros no existe"
exit 1
fi
done

echo "Tots els fitxers existeixen"

#comprobamos la extension de los ficheros
