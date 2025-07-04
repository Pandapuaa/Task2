# Bash Notes App Project (Ubuntu Version)

## Features

- Simple CLI Notes Manager using Bash
- Add, List, and Search notes
- Case-insensitive search
- Notes stored in a text file (`notes.txt`)

## Git Workflow

- Initialized a Git repo
- Created `add-feature` branch (add & list functionality)
- Created `search-feature` branch (search functionality)
- Merged both into `main`

## GitHub

- Repo pushed to GitHub
- Pull Request created from `add-feature` to `main`
- GitHub Issue created: `"search isn't case-insensitive"`

## Docker (Ubuntu)

- Base image: `ubuntu:latest`
- Script is copied to `/app`
- Default CMD lists all notes
- Optional volume used to persist notes (`/app`)

### Docker Commands

```bash
# Build the image
docker build -t bash-notes-app .

# Add a note
docker run --rm bash-notes-app ./notes.sh add "Example note"

# List notes
docker run --rm bash-notes-app

# Search a note
docker run --rm bash-notes-app ./notes.sh search example

# Use volume to persist notes
docker run --rm -v "$(pwd):/app" bash-notes-app ./notes.sh list
