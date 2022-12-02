#!/usr/bin/env bash

# 4got.branches.old
#
# @description Show branches sorted by committer date. By default last 5 branches, but you can pass number argument to change this value
#
# @arg $1 number How much old branches to show
#
# @example
#     4got.branches.old
# @example
#     4got.branches.old 10
#
# @exitcode 0 If successful
# @exitcode 1 If git returns error
function 4got.branches.old() {
  if [ $# -eq 0 ]; then
    local refnames=5
  else
    local refnames=$1
  fi

  git for-each-ref --sort=committerdate --color --format='No updates to %(color:bold green)%(refname:short)%(color:reset) since %(color:bold blue)%(committerdate:short)%(color:reset)' | head -n $refnames
}
