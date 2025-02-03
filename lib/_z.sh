#!/bin/bash

# Execute a command in the directory found by zoxide
#
# @param string $1 The query to search for
# @param string $2 The command to execute
#
# @return int 0 if successful, 1 otherwise
function _z() {
    # Check for required arguments
    if [ $# -lt 2 ]; then
        echo "Usage: _z <query> <command>"
        echo "Example: _z projects code"
        return 1
    fi

    # Store the query and command
    local query="$1"
    shift
    local cmd=("$@")

    # Check if zoxide is installed
    if ! command -v zoxide &>/dev/null; then
        echo "zoxide binary couldn't be found in \$PATH. Please install it first."
        return 1
    fi

    # Run zoxide to find the directory and capture both stdout and stderr
    if ! path=$(zoxide query "$query" 2>/dev/null); then
        echo "\"$query\" was not found in the zoxide database."
        return 1
    fi

    # Run the specified command with the path
    (cd "$path" && "${cmd[@]}")

    # Add to zoxide manually
    zoxide add "$path"
}
