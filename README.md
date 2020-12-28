# dotfiles

Do a ```--bare``` clone
```sh
$ alias dg="git --git-dir=$HOME/dotfiles/ --work-tree=$HOME"
$ dg checkout master
$ dg config --local status.showUntrackedFiles no
$ dg submodule update --init
```

[Method](https://www.atlassian.com/git/tutorials/dotfiles)
