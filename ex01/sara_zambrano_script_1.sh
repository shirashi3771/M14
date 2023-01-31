#!/bin/bash

numeroArg=$#
if [ $numeroArg -eq 2 ];then
echo Número d’arguments correcte $numeroArg
elif [ $numeroArg -lt 2 ];then
echo Mancan arguments
else
echo Massa arguments
fi
