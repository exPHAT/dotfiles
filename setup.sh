# Git
apt-get install git

# Setup Vundle (vim package manager)
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Move everything to home folder
cp -r .vim ~/.vim
cp .vimrc ~/.vimrc
cp .bash_profile ~/.bash_profile

vim +PluginInstall +qall

echo "Restart shell for changes to take full effect"

