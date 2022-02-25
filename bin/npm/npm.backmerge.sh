function npm_backmerge() {
  local curr_branch=`git rev-parse --abbrev-ref HEAD`
  git pull && 4got.npm.jump master && 4got.reset.hard && co $curr_branch && git merge origin/master -m 'Backmerged master' && push
  echo 'Backmerge completed. You may have to restart your local server.'
}