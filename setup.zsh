#!/usr/bin/env zsh

# clone dependencies
DIR=$HOME/zsh-syntax-highlighting
if test -d "$DIR"; then
    echo "$DIR exists - skipping clone"
else
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $DIR
fi

DIR=$HOME/powerlevel10k
if test -d "$DIR"; then
    echo "$DIR exists - skipping clone"
else
    git clone https://github.com/romkatv/powerlevel10k.git $DIR
fi


# do sym links
ln -sf $HOME/dotfiles/.zshrc $HOME/.zshrc

# do sourcing
source ~/.zshrc
