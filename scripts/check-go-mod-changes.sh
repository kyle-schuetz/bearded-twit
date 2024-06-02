#!/bin/bash

# check if go.mod or go.sum has changed
if [ -f go.mod ] || [ -f go.sum ]; then
  if git diff --name-only HEAD~1 | grep -E 'go\.mod|go\.sum'; then
    echo "true"
  else
    echo "false"
  fi
else
    echo "true"
fi