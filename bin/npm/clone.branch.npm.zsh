# gclb - git clone branch for review
# @arg $1 string Branch for review
# TODO: handle errors
function 4got.clone.branch.npm() {
  git --branch clone $1 $2
  cd $2
  npm ci
}