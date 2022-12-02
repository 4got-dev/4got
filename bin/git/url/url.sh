#!/usr/bin/env bash

# 4got.url
# @description Returns repo URL for opening in the browser
#
# @arg $1 string git repo remote name
# @example
#     4got.url
#     returns "https://github.com/4got-dev/4got"
# @example
#     4got.url origin
#     returns "https://github.com/4got-dev/4got"
# @example
#     open $(4got.url)
#     will open "https://github.com/4got-dev/4got" in your default browser
#
# @exitcode 0 If successful
# @exitcode 1 If an empty string passed to $1 and no origin remote
function 4got.url() {
  local remote="${1:-origin}"

  git remote get-url "$remote" | sed -E -e "s/(\..+)\:/\1\//" -e "s/git@/https:\/\//" -e "s/\.git$//"
}
