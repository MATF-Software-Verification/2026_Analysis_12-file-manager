#!/bin/bash
#set -e

REPORT_FILE="$(pwd)/clazy_report.txt"
TEMP_REPORT="$(pwd)/temp_report.txt"

cd ../12-file-manager/FileManager
echo "Cleaning old build..."
rm -rf build

echo "Removing old report..."
rm -f $REPORT_FILE
rm -f $TEMP_REPORT

export CLAZY_CHECKS="level2"

mkdir build
cd build

echo "Running qmake with Clazy..."
qmake .. QMAKE_CXX=clazy QMAKE_CC=clang

echo "Building project with Clazy analysis..."
make -j$(nproc) 2> "$TEMP_REPORT"

echo "Filtering report to only sources/ and headers/..."
grep -E "(\.\./)?(sources/|headers/)" "$TEMP_REPORT" > "$REPORT_FILE"

echo "Clazy analysis finished."
echo "Report saved to: $REPORT_FILE"

