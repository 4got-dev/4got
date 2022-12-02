#!/usr/bin/env bash

FOURGOT_DEPS+=("4got.name" "4got.path")

# TODO: add docs
function 4got.outside() {
  # TODO: add dependency 4got.name
  local repo_name=$(4got.name)
  cd "$(4got.path)" || return
  cd ..
}
