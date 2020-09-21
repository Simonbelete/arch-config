filetype plugin on
syntax on
colorscheme molokai

set noerrorbells "No sound on error
set tabstop=4 softtabstop=4
set nu "Line Numbers
set nowrap "Do not wrap words
"set noswapfile means no back when exiting
set incsearch
"set smartindent Auto indent

set nocompatible              " be iMproved, required
"ffiletype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'rafi/awesome-vim-colorschemes'
Plugin 'ryanoasis/vim-devicons'

call vundle#end()

" Auto open nerd tree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" Nerdtree toggle
map <F2> :NERDTreeToggle<CR>
" Auto close nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Nerdtree change default arrows

