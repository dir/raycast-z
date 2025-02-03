#!/bin/bash

# @raycast.schemaVersion 1
# @raycast.title Edit
# @raycast.mode silent
# @raycast.packageName z
# @raycast.argument1 { "type": "text", "placeholder": "Query" }
#
# @raycast.icon ../icons/edit.png
#
# @raycast.description Find a directory with zoxide and open it in the configured editor.
# @raycast.author Luke Davis
# @raycast.authorURL https://raycast.com/dir

# shellcheck disable=SC1091
source "$(dirname "$0")/../lib/_z.sh"

# common editors:
# code vim nvim emacs zed cursor windsurf subl code-insiders
Z_EDITOR="code"

_z "$1" "$Z_EDITOR" .

exit 0
