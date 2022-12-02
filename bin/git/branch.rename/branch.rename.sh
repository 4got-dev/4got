#!/usr/bin/env bash

# 4got.branch.rename
#
# @description Helper
#
# @arg $1 string Branch name to change
# @arg $2 string New name for branch
#
# @example
#     4got.branch.rename master main
#
# @exitcode 0 If successful
# @exitcode 1 If an empty string passed to $1 or $2
function 4got.branch.rename() {
  if [[ -z "$1" || -z "$2" ]]; then
    echo "Usage: $0 old_branch new_branch"
    return 1
  fi

  git branch -m "$1" "$2"
  # TODO: handle error on push from server side
  if git push origin :"$1"; then
    git push --set-upstream origin "$2"
  fi
}
# TODO: add compdef
# compdef _git 4got.branch.rename=git-branch
