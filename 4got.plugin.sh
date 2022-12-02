#!/usr/bin/env bash

# 4GOT - utils with git commands that you forgot

# @name 4got
# @brief If you forget rarely used git commands, just use the `4got<TAB>` autocomplete

FOURGOT_DEPS=()
FOURGOT_FUNCTIONS=(
  "utils/deps/deps.sh"
  "utils/basename/basename.sh"
  "utils/host/host.sh"
  "utils/path/path.sh"
  "utils/name/name.sh"
  "utils/url-encode/url-encode.sh"
  "utils/url-decode/url-decode.sh"

  "git/backmerge/backmerge.sh"
  "git/branch.name/branch.name.sh"
  "git/branch.prune/branch.prune.sh"
  "git/branch.rename/branch.rename.sh"
  "git/branch.remote/branch.remote.sh"
  "git/branches.merged.delete/branches.merged.delete.sh"
  "git/branches.old/branches.old.sh"
  "git/duplicate/duplicate.sh"
  "git/jump/jump.sh"
  "git/outside/outside.sh"
  "git/root/root.sh"
  "git/release/release.sh"
  "git/save2branch/save2branch.sh"
  "git/update/update.sh"
  "git/url/url.sh"

  "gitlab/mr/mr.sh"
  "gitlab/push.mr/push.mr.sh"
  "gitlab/review/review.sh"

  "github/pr/pr.sh"
)
FOURGOT_COMPLETIONS=()

for function in "${FOURGOT_FUNCTIONS[@]}"
  do source "${0:A:h}/bin/${function}"
done

4got.check_deps

# TODO: probably move into readme
alias gp='4got.path'
alias gbn='4got.branch.name'
alias prune='4got.branch.prune'
alias gbrn='4got.branch.rename'
alias gbmd='4got.branches.merged.delete'
alias gco='4got.checkout'
alias co='4got.checkout'
alias gcob='4got.branch.stash'
alias cob='4got.branch.stash'
alias gcli='4got.clone.npm'
alias mr='open $(4got.mr)'
alias pr='open $(4got.pr)'
