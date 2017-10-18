" Palermo's vimrc
 
" basic set up
set softtabstop=2       " indent by 2 spaces when hitting tab
syntax on               " syntax highlighting
set autoindent          " auto indenting
set number              " line numbers
colorscheme desert      " colorscheme desert
set nobackup            " get rid of anoying ~file
syntax on               " set syntax highlighting on
filetype plugin indent on
set relativenumber      " relative line number mode
let base16colorspace=256  " Access colors present in 256 colorspace

" vim-plug plugin manager 
call plug#begin('~/.vim/plugged')
" use plugins installed using the vim-plug application here
Plug 'takac/vim-hardtime'
call plug#end()

" pathogen plugin manager
execute pathogen#infect()

" turn  vim-hardtime on in every buffer
let g:hardtime_default_on = 1

" colorschemes
" For color scheme in Vim terminal, see https://github.com/chriskempson/base16-iterm2
" Used the base16-tomorrownight.dark.256.itermcolors
