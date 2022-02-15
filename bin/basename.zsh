
# 4got.basename
# 
# @arg $1 string git repo url
# @example
#     4got.basename git@github.com:fogrew/4got.git
#     returns "4got"
# TODO: add error codes
# TODO: handle https git urls
function 4got.basename() {
  # TODO: add condition for not passed $1
  # TODO: handle not passed argument
  local repo_name=$(basename $1)
  echo ${repo_name%.*}
}
# TODO: add compdef