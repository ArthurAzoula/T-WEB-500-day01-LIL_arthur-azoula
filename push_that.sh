#!/bin/bash

# Check if a commit message is provided as a parameter
if [ $# -eq 0 ]; then
  echo "Usage: $0 <commit_message>"
  exit 1
fi

# Add all files in the current directory to the staging area
git add .

# Commit the changes with the provided commit message
git commit -m "$1"

# Push the changes to the repository
git push origin main
