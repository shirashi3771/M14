#!/bin/bash
#echo $RANDOM
< dev/urandom tr -dc A-Za-z0-9 | head -c15 ; echo
