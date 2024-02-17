#!/bin/bash

SOURCE_DIR="$HOME/.dotfiles"
DEST_DIR="$HOME"

declare -a ignore_list=(".git" "link.sh" "README.md" "LICENSE.md")

# Enable glob option to include hidden files
shopt -s dotglob

# Function to link files and directories
link_file() {
	local src="$1"
	local dest="$2"

	mkdir -p "$(dirname "$dest")"
	ln -sfn "$src" "$dest"
}

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

	if [ -d "$file" ]; then
		# It's a directory, check if it contains only directories
		contents=("$file"/*)
		all_dirs=true
		for item in "${contents[@]}"; do
			if [ ! -d "$item" ]; then
				all_dirs=false
				break
			fi
		done

		if [ "$all_dirs" == true ]; then
			for subdir in "$file"/*; do
				subdir_name=$(basename "$subdir")
				# Link each subdirectory
				link_file "$subdir" "$DEST_DIR/$filename/$subdir_name"
			done
		else
			# Link the directory itself if it contains files
			link_file "$file" "$DEST_DIR/$filename"
		fi
	else
		# It's a file, link it
		link_file "$file" "$DEST_DIR/$filename"
	fi
done
