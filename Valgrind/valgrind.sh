#!/bin/bash

EXECUTABLE="../12-file-manager/FileManager/build/FileManager"

if [ ! -f "$EXECUTABLE" ]; then
    echo "Greška: Izvršni fajl ne postoji na putanji $EXECUTABLE"
    exit 1
fi

valgrind --leak-check=full \
         --show-leak-kinds=definite \
         --log-file=valgrind_report.txt \
         "$EXECUTABLE"

echo "Valgrind analiza završena."
echo "Izveštaj je sačuvan u valgrind_report.txt"
