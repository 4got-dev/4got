#!/usr/bin/env bash

# Get git repo folder name
FOURGOT_DEPS+=("4got.path")
function 4got.name() {
  # TODO: add dependency 4got.path
  basename "$(4got.path)"
}
