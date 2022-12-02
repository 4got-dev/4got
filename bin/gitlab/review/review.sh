#!/usr/bin/env bash

FOURGOT_DEPS+=("4got.host" "4got.path" "jq")
function 4got.mr2branch() {
  local mr="${1}"
  local host
  host=$(4got.host "$mr")
  # TODO: add method getTokenByHost
  local TOKEN="${2:-$CI_PRIVATE_TOKEN}"
  local project
  local url

  # TODO: get path of passed in args link
  project=$(rawurlencode "$(4got.path)")

  url="https://$($host)/api/v4/projects/$project/merge_requests/19"

  curl --header "PRIVATE-TOKEN:$TOKEN" -s "$url" | jq -r '.source_branch'
}
