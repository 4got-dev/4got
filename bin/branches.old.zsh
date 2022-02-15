
# TODO: add docs
# @arg $1 number How much old branches to show
# TODO: add error codes
function 4got.branches.old() {
  if [ $# -eq 0 ]; then
    local refnames=5
  else
    local refnames=$1
  fi

  git for-each-ref --sort=committerdate --color --format='No updates to %(color:bold green)%(refname:short)%(color:reset) since %(color:bold blue)%(committerdate:short)%(color:reset)' | head -n $refnames
}
# TODO: add compdef