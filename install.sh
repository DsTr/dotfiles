
if $is_macos; then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    brew install ipython
    brew install graphviz
    brew install php7
    brew install node
    brew install telnet
    brew install go
    brew install unbound
    brew install neovim
    brew install python3
    # Install other useful binaries.
    brew install ack
    #brew install exiv2
    brew install git
    brew install git-lfs
    brew install imagemagick --with-webp
    brew install lua
    brew install lynx
    brew install p7zip
    brew install pigz
    brew install pv
    brew install rename
    brew install rlwrap
    brew install ssh-copy-id
    brew install tree
    brew installbindiff
    brew install zopfli
    brew cleanup
fi


pip3 install --user neovim
