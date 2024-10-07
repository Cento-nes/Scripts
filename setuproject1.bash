#!/bin/bash
ARXIU="$2"
MIDA="$1"
PES="$(stat -c%s "$ARXIU")"
if [ $(stat -c%s $ARXIU) -gt $MIDA ];
then
echo "El arxiu es mes gran que $MIDA B per $((PES - MIDA))";
else
echo "El arxiu es mes petit que $MIDA B";
fi
echo "$PES"
