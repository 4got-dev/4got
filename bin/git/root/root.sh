#!/usr/bin/env bash

# @description Outputs the root repo path
# Using '--quiet' with 'symbolic-ref' will not cause a fatal error (128) if
# it's not a symbolic ref, but in a Git repo.
#
# @noargs
#
# @example
#     4got.root
# @example
#     git add $(4got.root)
#
# @exitcode 0
function 4got.root() {
  local root
  root=$(command git rev-parse --show-toplevel 2> /dev/null)
  [[ $? -eq 128 ]] && return # If no git repo
  echo $root
}
