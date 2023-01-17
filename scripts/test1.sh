#!/bin/bash
echo "introduzca su nombre"
read nombre
if [ $nombre = David ];then
echo te llamas david
elif [ $nombre = Alejandro ];then
echo te llamas Alejandro
else
echo no te llamas ni david, ni alejandro ,te llamas $nombre
fi

