
# TODO: add docs
# @arg $1 number How much old branches to show
# TODO: add error codes
function 4got.branches.old() {
  # TODO: split into lines
  if [[ $# -eq 0 ]]; then; local hed=10; else; local hed=$1; fi
  echo $hed # TODO: what for? maybe specify more info?
  echo $#
  # TODO: add coloring
  git for-each-ref --sort=committerdate --format='No updates to %(refname:short) since %(committerdate:short)...' | head -n $hed
}
# TODO: add compdef