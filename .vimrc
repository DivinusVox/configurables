set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'scrooloose/syntastic'  " linting for many languages
Plugin 'kchmck/vim-coffee-script'  " Coffeescript integration
Plugin 'tpope/vim-fugitive'  " Git integration
" Plugin 'davidhalter/jedi-vim'  " Python autocomplete via Jedi
Plugin 'Valloric/YouCompleteMe'  " Maybe better autocomplete?
Plugin 'gregsexton/MatchTag'



" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

syntax on

" Syntastic
let g:syntastic_always_populate_loc_list = 1

" YCM
let g:ycm_autoclose_preview_window_after_completion = 0
let g:ycm_autoclose_preview_window_after_insertion = 0



autocmd FileType python set shiftwidth=4 softtabstop=4 tabstop=4 expandtab
autocmd FileType javascript set shiftwidth=2 softtabstop=2 tabstop=2 expandtab
autocmd BufNewFile,BufReadPost *.html set shiftwidth=2 softtabstop=2 tabstop=2 expandtab
autocmd BufNewFile,BufReadPost *.coffee set shiftwidth=2 softtabstop=2 tabstop=2 expandtab

filetype plugin on
runtime macros/matchit.vim
