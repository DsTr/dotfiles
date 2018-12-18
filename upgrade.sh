
if $is_macos; then
    brew update && brew upgrade
fi

# vim-plug
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim +'PlugUpdate --sync' +qa


