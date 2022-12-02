#!/usr/bin/env bash

# 4got.update - fetch, checkout, pull, fetch, status
# TODO: check that update it is the same as checkout?
function 4got.update() {
  git fetch
  # TODO: add second arg with commit message
  git checkout "$1"
  git pull
  git fetch
  git status
}
# TODO: check compdef
# compdef _git 4got.update=git-checkout
