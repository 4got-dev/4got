#!/usr/bin/env bash

# gcli - gcl, cd, npm i
FOURGOT_DEPS+=("4got.basename")
function 4got.clone.npm() {
  git clone $1
  cd $(4got.basename $1)
  npm ci
}
