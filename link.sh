#!/bin/bash

SOURCE_DIR="$HOME/.dotfiles"
DEST_DIR="$HOME"

declare -a ignore_list=(".git" "link.sh" "README.md" "LICENSE.md")

# Enable glob option to include hidden files
shopt -s dotglob
for file in $SOURCE_DIR/*; do
	filename=$(basename "$file")

	ignore=false
	for ignore_file in "${ignore_list[@]}"; do
		if [ "$filename" == "$ignore_file" ]; then
			ignore=true
			break
		fi
	done

	if [ "$ignore" == true ]; then
		continue
	fi

	ln -sfn "$file" "$DEST_DIR/$filename"
done
