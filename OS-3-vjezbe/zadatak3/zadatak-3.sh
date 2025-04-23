#!/bin/bash

brojac=1

for datoteka in screenshots/*; do
    if [ -f "$datoteka" ]; then
        ime=$(basename "$datoteka")
        
        novo_ime="screenshot_${brojac}_${ime}"
        mv "$datoteka" "screenshots/$novo_ime"
        
        echo "Preimenovano: $novo_ime"
        
        ((brojac++))
    fi
done
