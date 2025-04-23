#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Potrebno je proslijediti točno 2 argumenta."
    exit 1
fi

direktorij="$1"
ekstenzija="$2"

pronadene_datoteke=0

for datoteka in "$direktorij"/*; do
    if [ -f "$datoteka" ] && [[ "$datoteka" == *"$ekstenzija" ]]; then
        echo "$(basename "$datoteka")"
        pronadene_datoteke=1
    fi
done

if [ $pronadene_datoteke -eq 0 ]; then
    echo "Nema datoteka s nastavkom $ekstenzija u direktoriju $direktorij."
fi
