#!/bin/bash

# List of project directories
projects=("facebook" "google/oriserve" "meta/oriserve" "oracle")

# Create directories
for project in "${projects[@]}"; do
    mkdir -p "projects/$project"
done

# Find and create test.txt in oriserve directories
find projects -type d -name "oriserve" -exec touch {}/test.txt \;

echo "Directory structure:"
tree projects
