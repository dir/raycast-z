#!/bin/bash

# @raycast.schemaVersion 1
# @raycast.title Search
# @raycast.mode silent
# @raycast.packageName z
# @raycast.argument1 { "type": "text", "placeholder": "Query" }
#
# @raycast.icon ../icons/search.png
#
# @raycast.description Search the zoxide database and copy the result to the clipboard.
# @raycast.author Luke Davis
# @raycast.authorURL https://raycast.com/dir

# shellcheck disable=SC1091
source "$(dirname "$0")/../lib/_z.sh"

if ! output=$(_z "$1" pwd 2>&1); then
    echo "$output"
    exit 1
fi

path="$output"

echo "$path" | pbcopy
echo "Copied $path to clipboard"

exit 0
