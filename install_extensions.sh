#!/bin/sh

# sed:    1. remove comments      2. remove empty lines
sed -E -e 's/^([^#]*)#.*/\1/' -e '/^[[:space:]]*$/d' ./extensions |
while IFS= read -r ext; do
    codium --install-extension "$ext" --force
done
