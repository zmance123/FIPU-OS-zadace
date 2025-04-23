#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Potrebno je proslijediti samo jedan argument."
    exit 1
fi

direktorij="$1"

trenutni_dir=$(pwd)

if [ ! -d "$trenutni_dir/$direktorij" ]; then
    echo "Direktorij '$direktorij' ne postoji u istom direktoriju kao skripta."
    exit 1
fi

echo "Komprimiranje datoteke iz direktorija '$direktorij'..."

zip -r svi_zapisi.zip "$direktorij"
