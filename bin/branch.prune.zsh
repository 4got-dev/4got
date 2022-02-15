
# TODO: add args
# TODO: add error codes
# TODO: ask before deleting
function 4got.branch.prune() {
  # TODO: add condition for not passed $1
  git branch -D "$1"
  git push origin --delete "$1"
}
# TODO: add compdef