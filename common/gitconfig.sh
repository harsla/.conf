git config --global core.editor "vim"
git config --global color.diff true
git config --global commit.gpgsign true
git config --global diff.submodule log
git config --global user.email "3027413+harsla@users.noreply.github.com"
git config --global user.name "Scott Harsla"
git config --global push.default matching
git config --global core.excludesfile $DOTCONF/dotfiles/gitignore_global
echo "git configured per $DOTCONF/gitconfig.sh"
