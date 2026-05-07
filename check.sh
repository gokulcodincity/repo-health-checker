#!/bin/bash

echo "Starting Repo Health Checks..."

# CHECK 1
if [ ! -f README.md ]; then
    echo "README.md file missing"
    exit 1
fi

# CHECK 2
line_count=$(wc -l < README.md)

if [ "$line_count" -le 5 ]; then
    echo "README.md has less than 5 lines"
    exit 1
fi

# CHECK 3
if [ ! -f .gitignore ]; then
    echo ".gitignore missing"
    exit 1
fi

# CHECK 4
if find . -name ".env" | grep -q ".env"; then
    echo ".env file found"
    exit 1
fi

# CHECK 5 - Commit message validation

commit_message=$(git log -1 --pretty=%B)
word_count=$(echo "$commit_message" | wc -w)

if [ "$word_count" -le 5 ]; then
    echo "Commit message must contain more than 5 words"
    exit 1
fi

echo "All checks passed!"
exit 0