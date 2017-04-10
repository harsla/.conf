source $DOTCONF/common/all.sh

sudo apt-get install -y git git-core vim zsh && wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh && chsh -s `which zsh`
