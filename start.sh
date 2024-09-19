#!/bin/bash

# Pull from main branch
git pull origin main


# Load environment variables from .env file
if [ -f .env ]; then
    export $(cat .env | grep -v '^#' | xargs)
else
    echo ".env file not found"
    exit 1
fi

# Run the command
tg-spam --files.samples=./spam-filter --no-spam-reply