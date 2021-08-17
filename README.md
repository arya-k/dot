# My Dotfiles

Heavily inspired by [this post](https://www.atlassian.com/git/tutorials/dotfiles), my dotfiles are designed to be ran from a bare git repository in a hidden folder, and avoid the problems that come from having to symlink files everywhere.

## Fresh Install Steps:
Make sure to have homebrew installed. Then, run the following in a fresh terminal:
```bash
git clone --bare https://bitbucket.org/durdn/cfg.git $HOME/.cfg
function dot {
   /usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME $@
}
mkdir -p .dot-backup
dot checkout
if [ $? = 0 ]; then
  echo "Checked out dotfiles.";
  else
    echo "Backing up pre-existing dot files.";
    dot checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .dot-backup/{}
fi;
dot checkout
dot config status.showUntrackedFiles no
brew bundle install --cleanup
```

## Tools
 - bat *the cat replacement*
 - exa *the ls replacement*
 - fzf *the fuzzy finder, replacing `Control+R`*
 - neovim *the better vim*
 - iina, transmission, visual-studio-code
 - Karabiner-Elements + yabai *for hyperkey*
 - `Kitty` *a fast terminal emulator with ligatures*
