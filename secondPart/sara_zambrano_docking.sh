#!/bin/bash

# Ex1
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

#compruebo que ficheros existen

#compruebo ficheros

for fichero in $1 $2 $3 ; do
if [ ! -f $fichero ]; then
echo Error: El fichero $fichero no existe
exit 1
fi
done

echo los ficheros $1 $2 $3 existen
#comprobamos la extension de los ficheros

#sacar extension
ext1=`echo $1 | cut -d "." -f2-`
ext2=`echo $2 | cut -d "." -f2-`
ext3=`echo $3 | cut -d "." -f2-`

#comparar extensiones
if [ $ext1 == 'tar.gz' ] && [ $ext2 == 'pdb' ] && [ $ext3 == 'txt' ]; then
echo extensiones correctas
else
echo error en extensiones
exit
fi

#Ex2

carpeta_docking=`date +"docking-%Y-%m-%d-%H-%M-%S"`
mkdir $carpeta_docking
mkdir $carpeta_docking/proteina
mkdir $carpeta_docking/farmacs
mkdir $carpeta_docking/resultats

ls -la $carpeta_docking

#docking-any-mes-dia-hora-minuts/proteina
#docking-any-mes-dia-hora-minuts/farmacs
#docking-any-mes-dia-hora-minuts/resultats

#######EX3
##Descomprimeix els fàrmacs a la carpeta de fàrmacs

##DESCOMPRIMIR FARMACS:
# Descomprimimos los farmacos a la carpeta farmacos
tar -zxvf $1 -C $carpeta_docking/farmacs/

# Copiar la proteina a la carpeta proteina
cp $2 $carpeta_docking/proteina

#mostramos
ls -la $carpeta_docking/proteina
ls -la $carpeta_docking/farmacs

#####EX4

# Creamos la carpeta docking simulaciones
mkdir $carpeta_docking/simulacions

# Creando carpeta para cada par de fármacos y proteinas
for farmac in $carpeta_docking/farmacs/*; do
farmac_name="$(basename $farmac .mol)"
proteina_name="$(basename $2 .pdb)"
carpeta_simulacion="$carpeta_docking/simulacions/$proteina_name-$farmac_name"
mkdir $carpeta_simulacion
done

echo "Se termino el script"
