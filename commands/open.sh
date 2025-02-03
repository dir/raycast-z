#!/bin/bash

# @raycast.schemaVersion 1
# @raycast.title Open
# @raycast.mode silent
# @raycast.packageName z
# @raycast.argument1 { "type": "text", "placeholder": "Query" }
#
# @raycast.icon ../icons/open.png
#
# @raycast.description Find a directory with zoxide and open it in Finder.
# @raycast.author Luke Davis
# @raycast.authorURL https://raycast.com/dir

# shellcheck disable=SC1091
source "$(dirname "$0")/../lib/_z.sh"

_z "$1" open .

exit 0
