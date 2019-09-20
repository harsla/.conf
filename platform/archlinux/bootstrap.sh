source $DOTCONF/common/all.sh

sudo pacman --noconfirm --needed -S ack tmux vim mosh git wget zsh
wget --no-check-certificate https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh && \
echo $(which zsh) | sudo tee -a /etc/shells && \
chsh -s $(which zsh) && \
cd .oh-my-zsh/themes/ && wget --no-check-certificate  https://raw.githubusercontent.com/babun/babun/master/babun-core/plugins/oh-my-zsh/src/babun.zsh-theme
