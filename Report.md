OUT PUT OF NOTES.SH

root@DESKTOP-A366JG0:/home/ubuntu# ./notes.sh add "This is my first note"
Note added.
root@DESKTOP-A366JG0:/home/ubuntu# ./notes.sh list
All Notes:
This is my first note
This is my first note
root@DESKTOP-A366JG0:/home/ubuntu# ./notes.sh search first
This is my first note
This is my first note
root@DESKTOP-A366JG0:/home/ubuntu#



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
