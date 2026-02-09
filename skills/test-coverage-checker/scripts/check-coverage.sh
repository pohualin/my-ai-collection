#!/bin/bash
# check-coverage.sh: Run tests and generate a JaCoCo coverage summary for a Maven Java project
# Usage: ./check-coverage.sh

set -e

# Run tests and generate JaCoCo report
mvn clean test jacoco:report

REPORT=target/site/jacoco/index.html

if [ -f "$REPORT" ]; then
  echo "\nJaCoCo HTML report generated at: $REPORT"
else
  echo "\nCoverage report not found!"
  exit 1
fi

# Optionally, print a summary from the HTML (requires 'lynx' or 'w3m')
if command -v lynx > /dev/null; then
  echo "\nCoverage summary (text):"
  lynx -dump "$REPORT" | grep -A 20 'Element' | head -n 22
elif command -v w3m > /dev/null; then
  echo "\nCoverage summary (text):"
  w3m -dump "$REPORT" | grep -A 20 'Element' | head -n 22
else
  echo "\nInstall 'lynx' or 'w3m' to see a text summary."
fi

