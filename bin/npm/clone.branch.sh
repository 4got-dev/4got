#!/usr/bin/env bash

# @arg $1 string Branch for review
function 4got.clone.branch() {
  4got.cd.outside
  4got.clone.npm $1
}
