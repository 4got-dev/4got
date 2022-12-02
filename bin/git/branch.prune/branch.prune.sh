#!/usr/bin/env bash

# 4got.branch.prune
#
# @arg $1 string git branch name
# @example
#     4got.basename develop
#
# @exitcode 0 If successful
# @exitcode 1 If an empty string passed to $1
function 4got.branch.prune() {
  if [[ -z "$1" ]]; then
    echo "Usage: $0 string [branch_name]"
    return 1
  fi
  # TODO: ask before deleting
  git branch -D "$1"
  git push origin --delete "$1"
}
# TODO: add compdef
