#!/bin/bash

# check if go.mod or go.sum has changed
if [ -f bearded-twit-blog/go.mod ] || [ -f bearded-twit-blog/go.sum ]; then
  if git diff --name-only HEAD~1 | grep -E 'go\.mod|go\.sum'; then
    echo "changed=true" >> $GITHUB_ENV
  else
    echo "changed=false" >> $GITHUB_ENV
  fi
else
    echo "changed=false" >> $GITHUB_ENV
fi