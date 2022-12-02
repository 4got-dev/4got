#!/usr/bin/env bash

function 4got.add_deps() {
  # echo "${FOURGOT_DEPS[*]}" # debug
  for dep in $FOURGOT_DEPS
  do
    if ! command -v "$dep" &> /dev/null
    then
      FOURGOT_DEPS+=(dep)
    fi
  done
}

function 4got.check_deps() {
  # echo "${FOURGOT_DEPS[*]}" # debug
  for dep in $FOURGOT_DEPS
  do
    if ! command -v "$dep" &> /dev/null
    then
      echo "$dep is unavailable"
    fi
  done
}
