#!/bin/bash

# Navigate to the bearded-twit-blog directory
cd bearded-twit-blog

if [ -f go.mod ]; then
    go build -v ./...
else
    echo "No go.mod file found, skipping build"
fi