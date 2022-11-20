#!/bin/bash

# sed:                 1. remove comments      2. remove empty lines
for ext in $(sed -E -e 's/^([^#]*)#.*$/\1/' -e '/^[[:space:]]*$/d' ./extensions); do
    codium --install-extension $ext --force
done
