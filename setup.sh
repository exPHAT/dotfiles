# Git
apt-get install git

# Setup Vundle (vim package manager)
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/terryma/vim-multiple-cursors ~/.vim/bundle/vim-multiple-cursors
git clone https://github.com/tomasr/molokai.git ./molokai

# Move/Remove molokai repo
mv molokai/colors ~/.vim/colors
rm -rf molokai

# Move everything to home folder
cp .vimrc ~/.vimrc
cp .bash_profile ~/.bash_profile

vim +PluginInstall +qall

echo "Restart shell for changes to take full effect"

