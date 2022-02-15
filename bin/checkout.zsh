
# co - 4got.checkout
# 
# @description Fetch, checkout, status
# 
# @arg $1 string Branch name for checkout
# 
# @example
#     4got.checkout master
# 
# @exitcode 0 If successful
# @exitcode 1 If git returns error
function 4got.checkout() {
  # TODO: add second arg with commit message
  git fetch
  git checkout "$1"
  git status
}
# TODO: check compdef
# compdef _git 4got.checkout=git-checkout