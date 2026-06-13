#!/bin/bash

# Pamti trenutni direktorijum gde se nalazi skripta (apsolutna putanja)
DIREKTORIJUM_SKRIPTE="$(pwd)"
IZVESTAJ="flaw_html.html"

echo "=== Pokrećem Flawfinder statičku analizu ==="

# 1. Vrati se korak unazad
cd ..

# 2. Uđi u ciljni direktorijum projekta
cd 12-file-manager/FileManager || { echo "Greška: Direktorijum nije pronađen!"; exit 1; }

echo "Skeniram foldere: headers/ i sources/ unutar $(pwd)"

# 3. Pokreni flawfinder, ali izveštaj pošalji nazad u direktorijum skripte
flawfinder --minlevel=3 --html headers/ sources/ > "$DIREKTORIJUM_SKRIPTE/$IZVESTAJ"

echo "----------------------------------------"
echo "Analiza je završena!"
echo "Izveštaj je uspešno sačuvan na lokaciji skripte: $DIREKTORIJUM_SKRIPTE/$IZVESTAJ"
