#!/bin/bash

# Define the path to the .bash_aliases file
BASH_ALIASES_FILE="$HOME/.bash_aliases"

# Append the text from the file to the .bash_aliases file
cat >> "$BASH_ALIASES_FILE" <<< ""
cat < .bash_aliases >> "$BASH_ALIASES_FILE"
echo "Content copied to $BASH_ALIASES_FILE ✅"
