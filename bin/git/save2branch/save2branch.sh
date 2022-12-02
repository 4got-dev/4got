#!/usr/bin/env bash

# @description save changes to new branch
# cob - `checkout -b` with branch init commit and push
# TODO: add error codes
FOURGOT_DEPS+=("4got.branch.name" "4got.path")
function 4got.save2branch() {
  local branch="${1:-4got-at-$(date "+%Y-%m-%d_%H-%M_%S")-$(4got.branch.name)}"
  local message="${2:-'chore: saved into temp branch via 4got.save2branch'}"

  git checkout -b "$branch"
  git add "$(4got.root)"
  git commit -a -m "$message"
  git push
}
# TODO: add compdef
