#!/bin/bash

# Navigate to the bearded-twit-blog directory and run tests
cd bearded-twit-blog

if [ -f go.mod ]; then
    go test -v ./...
else
    echo "No go.mod file found, skipping tests"
fi
