#!/bin/bash

echo "Starting Repo Health Checks..."

# CHECK 1 - README exists
if [ ! -f README.md ]; then
    echo "FAIL: README.md file is missing"
    exit 1
else
    echo "PASS: README.md file exists"
fi

# CHECK 2 - README line count
line_count=$(wc -l < README.md)

if [ "$line_count" -le 5 ]; then
    echo "FAIL: README.md has less than 5 lines"
    exit 1
else
    echo "PASS: README.md contains enough content"
fi

# CHECK 3 - .gitignore exists
if [ ! -f .gitignore ]; then
    echo "FAIL: .gitignore file is missing"
    exit 1
else
    echo "PASS: .gitignore file exists"
fi

# CHECK 4 - Secret file detection
if find . -name ".env" | grep -q ".env"; then
    echo "FAIL: .env file detected in repository"
    exit 1
else
    echo "PASS: No .env files detected"
fi

# CHECK 5 - Commit message validation
commit_message=$(git log -1 --pretty=%B)
word_count=$(echo "$commit_message" | wc -w)

if [ "$word_count" -le 5 ]; then
    echo "FAIL: Commit message must contain more than 5 words"
    exit 1
else
    echo "PASS: Commit message format is valid"
fi

echo "SUCCESS: All repository checks passed!"
exit 0