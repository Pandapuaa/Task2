#!/bin/bash

NOTES_FILE="notes.txt"

case "$1" in
  add)
    shift
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $*" >> "$NOTES_FILE"
    echo "Note added."
    ;;
  list)
    echo "All Notes:"
    cat "$NOTES_FILE"
    ;;
  *)
	  echo "usage: $0 {add \"note\" | list}"
	  ;;
esac

