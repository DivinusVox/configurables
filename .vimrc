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
Plugin 'scrooloose/nerdtree'  " file tree
Plugin 'kchmck/vim-coffee-script'  " Coffeescript integration
Plugin 'isRuslan/vim-es6'  " JS syntax
Plugin 'tpope/vim-fugitive'  " Git integration
" Plugin 'davidhalter/jedi-vim'  " Python autocomplete via Jedi
Plugin 'Valloric/YouCompleteMe'  " Maybe better autocomplete?
Plugin 'gregsexton/MatchTag'
Plugin 'ekalinin/Dockerfile.vim' " syntax for docker
Plugin 'rust-lang/rust.vim'
Plugin 'vim-airline/vim-airline'  " Powerline-like interface in vimscript
Plugin 'vim-airline/vim-airline-themes'
Plugin 'fatih/vim-go'
Plugin 'saltstack/salt-vim'
Plugin 'stephpy/vim-yaml'
Plugin 'leafgarland/typescript-vim'
Plugin 'Quramy/tsuquyomi'
Plugin 'Shougo/vimproc.vim'



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
set t_Co=256

syntax on

" Syntastic
let g:syntastic_always_populate_loc_list = 1
let g:tsuquyomi_disable_quickfix = 1
let g:syntastic_typescript_checkers = ['tsuquyomi']

" YouCompleteMe settings
let g:ycm_autoclose_preview_window_after_completion = 0
let g:ycm_autoclose_preview_window_after_insertion = 0
let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'


" Filetype spacing
autocmd FileType python set shiftwidth=4 softtabstop=4 tabstop=4 expandtab
autocmd FileType javascript set shiftwidth=2 softtabstop=2 tabstop=2 expandtab
autocmd FileType typescript set shiftwidth=2 softtabstop=2 tabstop=2 expandtab
autocmd BufNewFile,BufReadPost *.html set shiftwidth=2 softtabstop=2 tabstop=2 expandtab
autocmd BufNewFile,BufReadPost *.coffee set shiftwidth=2 softtabstop=2 tabstop=2 expandtab

filetype plugin on
runtime macros/matchit.vim

" Macros & Functions
" bufdo + restore current buffer
fun! BufDo(command)
  let currBuff = bufnr("%")
  execute 'bufdo ' . a:command
  execute 'buffer ' . currBuff
endfun

" clean trailing whitespace from all buffers
fun! BufDoWhitespace()
  execute 'call BufDo("%s/\\s\\+$//g | update")'
endfun

nmap <F4> :call BufDoWhitespace()<CR>

fun! TSRun()
  execute 'make'
  execute '!node %:r.js'
endfun
command TSRun 'call TSRun()'


cnoremap sudow w !sudo tee % >/dev/null

" Default register to system buffer
set clipboard=unnamedplus

" NerdTree hotkey
silent! nmap <C-p> :NERDTreeToggle<CR>
silent! nnoremap <Leader><F3> :NERDTreeToggle<CR>

let g:NERDTreeMapActivateNode = "<F3>"
let g:NERDTreeMapPreview = "<F4>"

" Airline settings
let g:airline_theme = 'powerlineish'
let g:airline_powerline_fonts = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#whitespace#enabled = 1
set laststatus=2
