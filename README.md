# 4got

> UNDER DEVELOPMENT

Utilities over git commands that you forgot.

Useful for code-reviewers.

## Roadmap

I want to do in MVP version:

- [ ] Cover scenarios:
  - [ ] Creating review requests: merge for GitLab and pull for GitHub
  - [ ] **Code review with downloading changes**:
    - [ ] Getting branch and last commit by [merge request](https://stackoverflow.com/a/67298918) or [pull request](https://stackoverflow.com/a/30584951) URLs
    - [ ] **Safe switching between branches** without lost current development state (commit into temporary branch, fetch, pull, checkout into branch for review)
    - [ ] Cloning a repo into near folder like `${project}-${branch}` with cleaning after review with separated command
  - [ ] **Automate dependency-updating** based on changing lock files while switching between branches or on cloning for review
    - [ ] npm
    - [ ] yarn
    - [ ] composer
  - [ ] **Branch police for maintainers**:
    - [ ] Purge old branches
    - [ ] Purge merged branches
  - [ ] **Release the projects**:
    - [ ] with git tags
    - [ ] GitHub releases
    - [ ] GitLab releases
    - [ ] to npm
- [ ] Cover with tests. For example, with [tests.sh](https://github.com/reconquest/tests.sh)
- [ ] Cover with documentation. For example, with [shdoc](https://github.com/reconquest/shdoc)

After the release:

- [ ] Intercept GitLab merge request answer to open it in browser
- [ ] Separate to multi-repo and use [imports](https://github.com/reconquest/import.bash) to download only needed utilities at first once.

## Contributing

I strive to improve this tool like [fzf](https://github.com/junegunn/fzf) and [forgit](https://github.com/wfxr/forgit):

- support various OS, platforms, and package managers
- add ability to make default behaviour more customizable, obvious and logged

But I do these utilities only in my spare time.

## Thanks

My repo based on [git-aliases](https://github.com/peterhurford/git-aliases.zsh). Huge thanks to Peter!

Sorry, if I forgot something 🙌