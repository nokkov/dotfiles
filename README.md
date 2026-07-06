# dotfiles

## Setup

```bash
git clone --bare <repo-url> ~/.dotfiles
git --work-tree=$HOME --git-dir=$HOME/.dotfiles checkout
```

If git complains about existing files, back them up and retry:
```bash
mkdir -p ~/.dotfiles-backup
git --work-tree=$HOME --git-dir=$HOME/.dotfiles checkout 2>&1 | grep "^\s" | xargs -I{} mv $HOME/{} ~/.dotfiles-backup/{}
git --work-tree=$HOME --git-dir=$HOME/.dotfiles checkout
```

Restart your shell — oh-my-zsh and plugins install automatically on first launch.

For convenience, add to your current shell:
```bash
alias dotfiles='git --work-tree=$HOME --git-dir=$HOME/.dotfiles'
```

## Sway wallpaper

```bash
ln -s path_to_your_wallpaper ~/.wallpaper
```
