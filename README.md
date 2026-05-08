# Repo Health Checker

[![Repo Health Checker](https://github.com/gokulcodincity/repo-health-checker/actions/workflows/check.yml/badge.svg?branch=main&event=push)](https://github.com/gokulcodincity/repo-health-checker/actions/workflows/check.yml)

This project automatically validates repository quality using Shell Script and GitHub Actions.

## Checks Included

- README.md validation
- README line count validation
- .gitignore validation
- Secret file detection (.env)
- Commit message validation

### 2. .gitignore Validation
Ensures .gitignore file exists to avoid committing unnecessary files.

- Git
- GitHub
- GitHub Actions
- Shell Scripting
- Linux

## Workflow

Whenever code is pushed:
1. GitHub Actions starts an Ubuntu Linux runner
2. The repository is cloned
3. check.sh script runs validations
4. CI pipeline shows PASS or FAIL

## CI/CD Features

- Automatic repository validation
- Red pipeline on failure
- Green pipeline on success
- GitHub Actions integration
- CI status badge
