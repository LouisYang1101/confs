set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
 set rtp+=~/.vim/bundle/Vundle.vim/
 call vundle#begin()

" let Vundle manage Vundle, required
 Bundle 'gmarik/vundle'
 Bundle 'scrooloose/nerdtree'
 Bundle 'jistr/vim-nerdtree-tabs'
" Bundle 'kien/ctrlp.vim'
 call vundle#end()

nmap <F2> :NERDTreeToggle <CR>
map <Leader>n <plug>NERDTreeTabsToggle<CR>

let NERDTreeDirArrows=0

" Configuration file for vim
set modelines=0		" CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup nobackup

filetype plugin indent on 

syntax on
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set number
set cindent
set autoindent
set fileencoding=utf-8
set enc=utf-8

autocmd FileType php set omnifunc=phpcomplete#CompletePHP
