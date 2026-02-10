#!/bin/bash
# convert-wiki-html-to-md.sh

# Usage: ./convert-wiki-html-to-md.sh input_file output.md


if [ "$#" -ne 2 ]; then
  echo "Usage: $0 input_file output.md"
  exit 1
fi

INPUT_FILE="$1"
OUTPUT_MD="$2"


# Check if pandoc is installed
if ! command -v pandoc &> /dev/null; then
  echo "Error: pandoc is not installed. Install it with 'brew install pandoc' or see https://pandoc.org/installing.html"
  exit 2
fi

# Detect file type and set Pandoc input format
EXT="${INPUT_FILE##*.}"
case "$EXT" in
  html)
    FORMAT="html"
    ;;
  docx)
    FORMAT="docx"
    ;;
  *)
    echo "Error: Unsupported input file type '$EXT'. Only .html and .docx are supported."
    exit 3
    ;;
esac


pandoc "$INPUT_FILE" -f "$FORMAT" -t markdown -o "$OUTPUT_MD"
echo "Converted $INPUT_FILE ($FORMAT) to $OUTPUT_MD using pandoc."

# Run cleanup script for Markdown formatting issues
SCRIPT_DIR="$(dirname "$0")"
python3 "$SCRIPT_DIR/cleanup_markdown.py" "$OUTPUT_MD"
