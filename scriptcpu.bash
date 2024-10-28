#!/bin/bash
#comprova si s'ha propocionat un PID
if [-z "$1" ];
then
	echo "us:proces.sh <PID>"
	exit 1
fi

#caputra el PID
PID=$1

#utilitza ps per obtenir el %cpu direc
cpu_usage=$(ps - p "$PID" -o %cpu=)

#cmpova si s'ha obtingut alguna cosa
ip [ -z "$cpu_usage" ];
then 
	echo"El proces amb PID $PID no existeix."
	exit 1

#mostra %cpu
Echo "el proces amb PID $PID utilitza un $cpu_usage% de la cpu."
