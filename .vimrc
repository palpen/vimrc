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

" status line
set laststatus=2 
set statusline=
set statusline+=%<\                       " cut at start
set statusline+=%2*[%n%H%M%R%W]%*\        " flags and buf no
set statusline+=%-40f\                    " path
set statusline+=%=%1*%y%*%*\              " file type
set statusline+=%10((%l,%c)%)\            " line and column
set statusline+=%P                        " percentage of file
set showcmd

" text formatting
au FileType * set fo-=c fo-=r fo-=o  " remove auto comment in new line in vim 

" turn on indentation guide and configure it to desired look
let g:indent_guides_enable_on_vim_startup = 1
set ts=4 sw=4 et
let g:indent_guides_start_level = 1 
let g:indent_guides_guide_size = 1
set background=dark

" map cursor column and line to the F2 key
map <F2> :set cursorcolumn!<Bar>set cursorline!<CR>
hi cursorcolumn ctermfg=White ctermbg=DarkGray
hi cursorline ctermfg=White ctermbg=DarkGray
