#!/bin/bash
if [ $# -ne 2 ] && [ $# -ne 3 ]; 
then
	echo "son nesesaris exactament 2 o 3 arguments"
	exit 1
fi
#echo "argument rebuts: $1, $2 i $3"

#echo "$(date) $(whoami) INFO Execució $0 $1 $2 $3" >> /var/log/setup.log
#mkdir "$1"
#mkdir "$1/$2"
#mkdir "$1/$2"/codi
#mkdir "$1/$2"/documentacio
#mkdir "$1/$2"/documentacio/legal
#mkdir "$1/$2"/documentacio/manuals
