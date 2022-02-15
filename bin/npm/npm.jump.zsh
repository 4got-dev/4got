function 4got.npm.jump() {
  4got.checkout "$1"
  npm ci
}
compdef _git 4got.npm.jump=git-checkout