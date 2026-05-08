# Repo Health Checker

This project automatically validates repository quality using GitHub Actions and Shell Script.

## Checks Included

### 1. README Validation
Checks whether README.md exists and contains more than 5 lines.

### 2. .gitignore Validation
Ensures .gitignore file exists to avoid committing unnecessary files.

### 3. Secret File Detection
Detects accidental .env or secret files inside repository.

### 4. Commit Message Validation
Checks whether commit messages contain more than 5 words.

## Workflow

Whenever code is pushed to a branch:
1. GitHub Actions starts Ubuntu Linux VM
2. Runs check.sh
3. Validates repository
4. Shows PASS or FAIL result

# Repo Health Checker

[![Repo Health Checker](https://github.com/gokulcodincity/repo-health-checker/actions/workflows/check.yml/badge.svg?branch=main&event=push)](https://github.com/gokulcodincity/repo-health-checker/actions/workflows/check.yml)
