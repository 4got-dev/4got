#!/usr/bin/env bash

function 4got.branch.remote() {
  git rev-parse --abbrev-ref --symbolic-full-name @{u}
}
