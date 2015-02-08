" Setup plugins
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
Plugin 'gmarik/Vundle.vim'

" Multiple cursors (Like SublimeText)
Plugin 'git://github.com/terryma/vim-multiple-cursors.git'

" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on

" Save time from typos and reassign capital letters
:command WQ wq
:command Wq wq
:command W w
:command Q q

" Setup color scheme
syntax enable
let g:molokai_original = 1
colorscheme molokai

" Setup binding for commenting
autocmd FileType c,cpp,java,scala let b:comment_leader = '// '
autocmd FileType sh,ruby,python   let b:comment_leader = '# '
autocmd FileType conf,fstab       let b:comment_leader = '# '
autocmd FileType tex              let b:comment_leader = '% '
autocmd FileType mail             let b:comment_leader = '> '
autocmd FileType vim              let b:comment_leader = '" '

" Bind keys to comment action
noremap <silent> ,// :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> ,.. :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>

" Setup mappings for multiple-cursors
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-d>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

