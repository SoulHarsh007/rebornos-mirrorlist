#!/bin/bash

ini_file="reborn-mirrorlist"
json_file="mirrorlist.json"

# Check if the mirrorlist file exists
if [ ! -f "$ini_file" ]; then
  echo "Error: $ini_file not found."
  exit 1
fi

# Extract date and revision from the mirrorlist file
metadata_line=$(grep -oP '^# --> RebornOS Mirrorlist from \K\d+-\d+' "$ini_file")
date=$(echo "$metadata_line" | cut -d'-' -f1)
revision=$(echo "$metadata_line" | cut -d'-' -f2)

# Start JSON structure
echo "{" >"$json_file"
echo "  \"date\": $date," >>"$json_file"
echo "  \"revision\": $revision," >>"$json_file"
echo "  \"mirrors\": [" >>"$json_file"

# Read each line from the mirrorlist file
while IFS= read -r line; do
  # Check for mirror entries
  if [[ "$line" =~ ^#\ Name:.*$ ]]; then
    # If it's a mirror entry, start a new JSON object for a mirror
    if [ -n "$mirror_name" ]; then
      echo "    }," >>"$json_file"
    fi

    mirror_name=$(echo "$line" | sed -n 's/^# Name: \(.*\)$/\1/p')
    echo "    {" >>"$json_file"
    echo "      \"name\": \"$mirror_name\"," >>"$json_file"
  elif [ -n "$mirror_name" ]; then
    # Parse location and server for mirrors
    case "$line" in
    "# Location:"*)
      mirror_location=$(echo "$line" | sed -n 's/^# Location: \(.*\)$/\1/p')
      echo "      \"location\": \"$mirror_location\"," >>"$json_file"
      ;;
    "Server ="*)
      mirror_server=$(echo "$line" | sed 's/^Server = \(.*\)$/\1/' | tr -d '[:space:]')
      echo "      \"server\": \"$mirror_server\"" >>"$json_file"
      ;;
    esac
  fi
done <"$ini_file"

# Close the last JSON object for the last mirror
if [ -n "$mirror_name" ]; then
  echo "    }" >>"$json_file"
fi

# End JSON structure
echo "  ]" >>"$json_file"
echo "}" >>"$json_file"

echo "Conversion completed. JSON file created: $json_file"
