source $DOTCONF/common/all.sh

sudo apt-get install -y git git-core vim zsh && \
wget --no-check-certificate http://install.ohmyz.sh -O - | sh && \
echo $(which zsh) | sudo tee -a /etc/shells && \
chsh -s $(which zsh) && \
cd .oh-my-zsh/themes/ && wget --no-check-certificate  https://raw.githubusercontent.com/babun/babun/master/babun-core/plugins/oh-my-zsh/src/babun.zsh-theme
