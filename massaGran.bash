#!/bin/bash
ARXIU="$2"
MIDA="$1"
PES="$(stat -c%s "$ARXIU")"


# verificar si es un arxiu o direcori
if [ -d "$ARXIU" ]; 
then
PES=$(du -sb "$ARXIU" | cut -f1) #per a  un direcotri
else
PES=$(stat -c%s "$ARXIU") #per un arxiu
fi

#comparar el pes amb la mida donada
if [ $PES -gt $MIDA ];
then
	echo "el $ARXIU es mes gran que $MIDA B"
else
	echo "El $ARXIU es mes petit que $MIDA B"
fi
























#if [ $(stat -c%s $ARXIU) -gt $MIDA ];
#then
#echo "El arxiu es mes gran que $MIDA B per $((PES - MIDA))";
#else
#echo "El arxiu es mes petit qe $MIDA B";
#fi
#echo "$PES"
