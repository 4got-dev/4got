#!/usr/bin/env bash

FOURGOT_DEPS+=("4got.url" "4got.branch.name")
function 4got.mr() {
  # TODO: support opening already created requests
  echo "$(4got.url)/-/merge_requests/new?merge_request[source_branch]=$(4got.branch.name)"
}
