#!/usr/bin/env bash

FOURGOT_DEPS+=("4got.url")
function 4got.path() {
  local url="${1:-$(4got.url)}"

  echo "$url" | cut -d/ -f4-
}
