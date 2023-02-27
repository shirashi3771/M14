#!/bin/bash

#grep ^SEQRES 4duh.pdb | sed 's/SEQRES | sed 's/^[[:blanck:]]//g' | grep ' B' 

grep ^AUTHOR 4duh.pdb |sed 's/AUTHOR// g'
