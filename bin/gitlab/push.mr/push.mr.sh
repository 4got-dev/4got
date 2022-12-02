#!/usr/bin/env bash

# Push with creating a merge request in gitlab
# @arg $1 string taget branch
# @see https://docs.gitlab.com/ee/user/project/push_options.html#merge-when-pipeline-succeeds-alias
FOURGOT_DEPS+=("4got.branch.name")
function 4got.push.mr() {
  # TODO: check has args
  # TODO: check args if empty
  # TODO: check ordered args
  # TODO: add default values
  local target title label # reset to use local vars instead of global
  local "${@}" # parse unordered args to vars
  # [[ -z "target" ]] && target=

  echo "target: ${target}, title: ${title}, label: ${label}"
  echo "${@}"

  # if (( $# == 0 )); then
  #   # When no arguments are provided, just push
  # else

  # fi

  # git push --set-upstream origin $(4got.branch.name) \
  #   --push-option merge_request.create \
  #   --push-option merge_request.remove_source_branch \
  #   --push-option merge_request.target=$($1) \
  #   --push-option merge_request.title="$($2)"
  #   --push-option merge_request.label=""
}
