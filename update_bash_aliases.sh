#!/bin/bash

# Define the path to the .bash_aliases file
BASH_ALIASES_FILE="$HOME/.bash_aliases"

# Check that the text file to append from exists
if [ ! -f "$1" ]; then
  echo "Error: file not found"
  echo "Usage: $0 <text_file>"
  exit 1
fi

# Append the text from the file to the .bash_aliases file
cat "\n$1" >> "$BASH_ALIASES_FILE"
