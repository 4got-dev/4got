
# TODO: wtf here?
# TODO: add docs with error codes
function backmerge_branch() {
  # TODO: use 4got.branch.name
  local curr_branch=`git rev-parse --abbrev-ref HEAD`
  # TODO: add condition for not passed $1
  # TODO: check sequence of actions, i have doubt
  # TODO: check merge message
  # TODO: split into lines
  4got.update $1 && 4got.checkout $curr_branch && git merge $1 -m 'Backmerged master' && push
  echo 'Backmerge completed.'
}

# TODO: combine with backmerge_branch
function backmerge() {
  backmerge_branch 'master'
}

# TODO: wtf here?
function backmerge_all() {
  # TODO: use 4got.update?
  git fetch
  # TODO: use 4got.branch.name
  local curr_branch=`git rev-parse --abbrev-ref HEAD`
  for branch in $(git for-each-ref --format='%(refname)' refs/heads/); do
    local branch=${branch/refs\/heads\//}
    echo "!!! Backmerging $branch ..."
    4got.update master
    co $branch && git merge origin/master -m 'Backmerged master' && push
  done 
  co curr_branch
}
# TODO: add compdef