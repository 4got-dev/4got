#!/usr/bin/env bash

# 4got.basename
#
# @arg $1 string git repo url
# @example
#     4got.basename git@github.com:fogrew/4got.git
#     returns "4got"
#
# @exitcode 0 If successful
# @exitcode 1 If an empty string passed to $1
# TODO: handle https git urls
function 4got.basename() {
  if [[ -z "$1" ]]; then
    echo "Usage: $0 old_branch new_branch"
    return 1
  fi

  local repo_name=$(basename $1)
  echo ${repo_name%.*}
}
