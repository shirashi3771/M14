#!/bin/bash
echo introduzca un numero
read numero
if [ $numero -eq 2 ];then
echo Número d’arguments correcte $numero
elif [ $numero -lt 2 ];then
echo Mancan arguments
else
echo Massa arguments
fi
