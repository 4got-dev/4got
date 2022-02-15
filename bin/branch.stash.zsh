
# @description save changes to new branch
# cob - `checkout -b` with branch init commit and push
# TODO: add error codes
function 4got.branch.stash() {
  # TODO: add condition for not passed $1
  git checkout -b "$1"
  # TODO: handle dependency (4got.path)
  # if(!4GOT_FUNCTIONS["4got.path"]) error "please add 4got.path to plugins"
  git add "$(4got.path)"
  # TODO: add second arg with commit message
  git commit -a -m "Started $1"
  git push
}
# TODO: add compdef