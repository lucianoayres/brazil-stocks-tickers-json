#!/bin/bash

# Check if the correct number of arguments is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <json_file>"
    exit 1
fi

# Get the input file and its directory
input_file="$1"
input_dir=$(dirname "$input_file")
input_basename=$(basename "$input_file")
output_file="${input_dir}/sorted_${input_basename}"

# Check if the file exists
if [ ! -f "$input_file" ]; then
    echo "File not found: $input_file"
    exit 1
fi

# Use jq to extract, sort, and save the JSON content
jq '. | sort_by(.ticker)' "$input_file" > "$output_file"

# Check if the output file was created successfully
if [ -f "$output_file" ]; then
    echo "Sorted JSON saved to $output_file"
else
    echo "Failed to create the sorted JSON file."
    exit 1
fi
