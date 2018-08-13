set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)
Plugin 'vim-scripts/indentpython.vim'
Bundle 'Valloric/YouCompleteMe'
Bundle 'chase/vim-ansible-yaml'

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" enable folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

" set line numbers
set number

" python indenting
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |
    \ set encoding=utf-8

" yaml formatting
au BufNewFile,BufRead *.yml,*.yaml
     \ set filetype=ansible
"    \ set tabstop=2 |
"    \ set softtabstop=2 |
"    \ set shiftwidth=2 |
"    \ set expandtab |
"    \ set autoindent |
"    \ set fileformat=unix |
"    \ set encoding=utf-8


"define BadWhitespace before using in a match
highlight BadWhitespace ctermbg=red guibg=darkred
au BufNewFile,BufRead *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

let g:ycm_python_binary_path='python'
let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'
