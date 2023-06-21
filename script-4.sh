#!/bin/bash

# Check if a filename is provided
if [ $# -eq 0 ]; then
    echo "Please provide a filename."
    exit 1
fi

filename=$1

# Check if the file exists
if [ ! -e "$filename" ]; then
    echo "File '$filename' does not exist."
    exit 1
fi

# Display file information
echo "File name : $filename "
echo "Size: $(du -h "$filename" | awk '{print $1}')"
echo "Permissions: $(stat -c "%A" "$filename")"
echo "Owner: $(stat -c "%U" "$filename")"
