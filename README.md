# My Dotfiles

Heavily inspired by [this post](https://www.atlassian.com/git/tutorials/dotfiles), my dotfiles are designed to be ran from a bare git repository in a hidden folder, and avoid the problems that come from having to symlink files everywhere.

## On the old machine
Backup the `.ssh` and `.zsh_history` files, as well as any other files not in the cloud, that you wish to keep.

## Fresh Install Steps:
Make sure to have homebrew installed.
- Install the `.ssh` folder (and maybe `.zsh_history` while you're at it).
- Rebind Caps Lock -> Escape
- Run the following in a fresh terminal:

```bash
git clone --bare git@github.com:arya-k/dot.git $HOME/.dot
function dot {
   /usr/bin/git --git-dir=$HOME/.dot/ --work-tree=$HOME $@
}
dot checkout
echo "Checked out dotfiles.";
dot config status.showUntrackedFiles no
brew bundle install --cleanup
```

- Set your wallpapers (in ~/Library/Wallpapers)
