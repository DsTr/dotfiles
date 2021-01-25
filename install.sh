
mkdir -p $HOME/.local/share/nvim/{undo,backup}

if $is_macos; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
    brew install ipython
    #brew install graphviz
   # brew install php7
    brew install node telnet go unbound neovim python3 ack rename ssh-copy-id tree 
    brew install imagemagick --with-webp
    brew cleanup
    # scala apps installer
    brew install coursier/formulas/coursier
fi


if [ -n $is_macos ]; then
    sudo dnf install neovim
fi

pip3 install neovim --upgrade
pip2 install neovim --upgrade

nvim +slient +VimEnter +PlugInstall +qall
