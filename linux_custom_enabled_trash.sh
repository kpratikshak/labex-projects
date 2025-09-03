#!/bin/zsh

# This script is used to move files or directories to the trash directory instead of permanently deleting them.
# If the -f option is used, the targets will be moved to the trash directory.
# If the targets do not exist, an error message will be displayed.

TRASH_DIR="/tmp/trash"

if [[ "$1" == "-f" ]]; then
  shift
  for arg in "$@"; do
    # Check if the target exists
    if [[ -e "$arg" ]]; then
      # Move the target to the trash directory
      mv -f "$arg" "$TRASH_DIR"
    else
      echo "Error: $arg does not exist."
    fi
  done
else
  # Execute the original rm command
  /bin/rm "$@"
fi
