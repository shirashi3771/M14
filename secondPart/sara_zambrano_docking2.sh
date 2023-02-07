#!/bin/bash
#creacio de carpeta
carpeta="docking-$(date +%Y-%m-%d-%H-%M)"
if [ ! -d "$carpeta" ]; then
mkdir "$carpeta"
fi
###crear carpeta y subcarpeta
carpeta="docking-$(date +%Y-%m-%d-%H-%M)"
subcarpetas=("proteina" "farmacs" "resultats")
if [ ! -d "$carpeta" ]; then
mkdir "$carpeta"
fi

for subfolder in "${subcarpeta[@]}"; do
path="$carpeta/$subcarpeta"
if [ ! -d "$comprovacio" ]; then
mkdir "$comprovacio"
fi
done
