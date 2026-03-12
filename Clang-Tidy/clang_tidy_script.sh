#!/bin/bash
# Provera da li je clang-tools instaliran
command -v run-clang-tidy >/dev/null || { echo "Instaliraj: sudo apt install clang-tools"; exit 1; }

# Provera da li je bear instaliran
command -v bear >/dev/null || { echo "Bear nije instaliran. Instaliraj: sudo apt install bear"; exit 1; }
# ---------------------------------------
# Konfiguracija
# ---------------------------------------
PROJECT_ROOT="$(pwd)/../12-file-manager/FileManager"                       
BUILD_DIR="$PROJECT_ROOT/build"            # build folder
REPORT_FILE="$(pwd)/MyCTReport.txt" # gde ce biti clang-tidy izvestaj
SOURCES_DIR="$PROJECT_ROOT/sources"
HEADERS_DIR="$PROJECT_ROOT/headers"

cd "$PROJECT_ROOT"
# ---------------------------------------
# 5. Pokretanje clang-tidy nad sources i headers
# ---------------------------------------

CHECKS='clang-diagnostic-*,clang-analyzer-*,modernize-*,performance-*,readability-*,bugprone-*'
echo "Pokretanje clang-tidy nad sources i headers folderima..."
run-clang-tidy -p build -checks="$CHECKS" sources headers -j $(nproc)> "$REPORT_FILE" 2>&1

echo "Clang-tidy analiza zavrsena. Izvestaj: $REPORT_FILE"
