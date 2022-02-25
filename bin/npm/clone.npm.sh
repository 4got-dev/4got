# gcli - gcl, cd, npm i
function 4got.clone.npm() {
  git clone $1
  cd $(4got.basename $1)
  npm ci
}