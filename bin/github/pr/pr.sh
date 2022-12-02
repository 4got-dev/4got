#!/usr/bin/env bash

FOURGOT_DEPS+=("4got.url" "4got.branch.name")
function 4got.pr() {
  # TODO: support opening already created requests
  echo "$(4got.url)/compare/$(4got.branch.name)?expand=1"
}
