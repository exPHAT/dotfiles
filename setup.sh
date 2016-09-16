# Setup Vundle (vim package manager)
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/terryma/vim-multiple-cursors ~/.vim/bundle/vim-multiple-cursors
git clone https://github.com/tomasr/molokai.git ./molokai

# Move/Remove molokai repo
mv molokai/colors ~/.vim/colors
rm -rf molokai

# Rename old files
mv ~/.vimrc ~/.vimrc_old
mv ~/.bash_profile ~/.bash_profile_old

# Move new files into place
cp .vimrc ~/.vimrc
cp .bash_profile ~/.bash_profile

vim +PluginInstall +qall

echo "Restart shell for changes to take full effect"

