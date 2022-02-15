# 4GOT - utils with git commands that you forgot

# @name 4got
# @brief If you forget rarely used git commands, just use the `4got<TAB>` autocomplete

4GOT_FUNCTIONS=( "backmerge", "basename", "branch.name", "branch.rename", "branch.prune", "branch.stash", "branches.merged.delete", "branches.old", "checkout", "duplicate", "name", "outside", "path", "release", "update" )
4GOT_COMPLETIONS=()

# TODO: use imports: https://github.com/reconquest/import.bash
for file ($^4GOT_FUNCTIONS(.N)) source $file

# TODO: probably move into readme
alias gp='4got.path'
alias gbn='4got.branch.name'
alias gbrn='4got.branch.rename'
alias gbmd='4got.branches.merged.delete'
alias gco='4got.checkout'
alias co='4got.checkout'
alias gcob='4got.branch.stash'
alias cob='4got.branch.stash'
alias gcli='4got.clone.npm'
