# TODO: add docs
function 4got.release() {
  # TODO: split into lines
  if [ $# -eq 0 ]; then
    echo "You must pass a tag to release."
  else
    4got.update master
    git tag $1
    git push origin $1
  fi
}
# TODO: add compdef
# TODO: make github/gitlab/npm release via push options