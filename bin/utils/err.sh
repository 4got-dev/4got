#!/usr/bin/env bash

# @arg $* string All error messages should go to STDERR
err() {
  echo "[$(date +'%Y-%m-%dT%H:%M:%S%z')]: $*" >&2
}
