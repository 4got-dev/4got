
# @arg $1 string 
# TODO: add error codes
function 4got.duplicate() {
  4got.cd.outside
  # TODO: add second arg with commit message
  cp $repo_name $1
  cd $1
}
# TODO: add compdef