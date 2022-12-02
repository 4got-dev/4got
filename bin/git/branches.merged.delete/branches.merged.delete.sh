#!/usr/bin/env bash

# TODO: add docs
# TODO: add error codes
function 4got.branches.merged.delete() {
  if [[ $# != 1 ]]; then
    mergedInto="master"
  else
    mergedInto="$1"
  fi

  # TODO: add dependency 4got.branch.name
  if [[ "${4got.branch.name}" != "${mergedInto}" ]]; then
    echo "You have to be on the same git branch you're using as the merge target"
    exit 1
  fi

  git branch --merged "${mergedInto}" | grep -v "\* ${mergedInto}" | xargs -n 1 git branch -d
}
# TODO: add compdef
