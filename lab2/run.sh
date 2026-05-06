#!/bin/bash
# Check if a filename was provided
if [ -z "$1" ]; then
  echo "Usage: ./run.sh filename.l"
  exit 1
fi

# Extract filename without extension
FILENAME=$(basename "$1" .l)

echo "--- Compiling $1 ---"
flex "$1" &&
  gcc lex.yy.c -o "$FILENAME" -lfl &&
  echo "--- Running $FILENAME ---" &&
  ./"$FILENAME"
