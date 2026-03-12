#!/bin/bash

# Obrisi build direktorijum ako postoji

cd 12-file-manager/FileManager
rm -rf build

# Kreiraj novi build direktorijum

mkdir build

# Udji u build direktorijum

cd build || exit

# Pokreni qmake (pretpostavlja da je .pro fajl u parent direktorijumu)

qmake .. CONFIG+=debug

# Kompajliraj projekat
bear -- make  -j"$(nproc)" || { echo "Build nije uspeo!"; exit 1; }
