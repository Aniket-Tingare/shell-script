#!/bin/bash

# Prompt the user to enter the directory path
read -p "Enter the directory path/name: " directory

# Check if the directory exists
if [ ! -d "$directory" ]; then
    echo "Directory '$directory' does not exist."
    exit 1
fi

# Count the number of files in the directory
file_count=$(find "$directory" -type f -not -path '*/\.*' | wc -l)

# Display the file count
echo "Number of files in '$directory': $file_count"
