#!/usr/bin/env bash

# @description Returns name of current branch
#
# @noargs
#
# @example
#     4got.branch.name
# @example
#     git push --set-upstream origin $(4got.branch.name)
#
# @exitcode 0
function 4got.branch.name() {
  git branch --show-current || return
}
