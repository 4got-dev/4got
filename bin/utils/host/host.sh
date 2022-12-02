#!/usr/bin/env bash

FOURGOT_DEPS+=("4got.url")
function 4got.host() {
  local url="${1:-$(4got.url)}"

  echo "$url" | sed 's|.*//||; s|.*@||; s|/.*||; s|:.*||'
}
