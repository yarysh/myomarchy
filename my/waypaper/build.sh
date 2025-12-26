#!/bin/bash

for file in ../../omarchy/themes/*/backgrounds/*; do
    filename=$(basename "$file")
    theme_path="${file%/backgrounds/*}"
    theme_folder=$(basename "$theme_path")
    cp "$file" "backgrounds/${theme_folder}-${filename}"
done
