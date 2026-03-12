#!/bin/bash

REPORT_DIR="$(pwd)"
cd ../12-file-manager/FileManager

cppcheck --enable=all --inconclusive \
--suppress=missingInclude \
--suppress=missingIncludeSystem \
sources/*.cpp 2> "$REPORT_DIR/cppcheck_report.txt"

echo "Report generated: $REPORT_DIR/cppcheck_report.txt"
