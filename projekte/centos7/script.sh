#!/bin/bash

VNAME=$1
NNAME=$2
SHOW=$3

if [ "$SHOW" = "true" ]; then
	echo "Hallo, $VNAME $NNAME"
else
	echo "Wenn du die Namen sehen willst, wähle show-Option"
fi