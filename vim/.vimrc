set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" ui related plugins
Plugin 'flazz/vim-colorschemes' " a huge collection of color schemes
Plugin 'bling/vim-airline' " light status line
" Plugin 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'} "

" controls
Plugin 'rking/ag.vim' " the silver search plugin for faster 'grep'
Plugin 'sjl/gundo.vim' " a graph display of vim undo tree
Plugin 'ctrlpvim/ctrlp.vim' " the famous ctrl-p plugin. use the actively maintained git repo
Plugin 'tpope/vim-fugitive' " git plugin
Plugin 'ntpeters/vim-better-whitespace' " better handle trailing whitespaces
Plugin 'scrooloose/nerdtree' " file explorer

" editing enhancement
Plugin 'Townk/vim-autoclose' " autocomplete the parenthese

" language support
Plugin 'fatih/vim-go' " the golang support

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

" shortcuts customized
let mapleader="," " leader is comma
nnoremap <leader>u :GundoToggle<CR>
nnoremap <leader>/ :Ag
nnoremap <leader>v :vnew<CR>
nnoremap <leader>h :new<CR>
nnoremap <leader><space> :nohlsearch<CR> " shortcut to turn off search highlight
nnoremap <leader>k :NERDTreeToggle<CR> " open/close file explorer

" some basic behaviors of vim
colorscheme muon
set background=dark
syntax enable " enable syntax highlighting
set number " enable line numbers
set cursorline " highlight the current line
set wildmenu " visual autocomplete for command menu
set showmatch " show matching parentheses [] {} ()
set laststatus=2 " 2 for always showing status line

" spaces and tabs
set tabstop=4 " number of visual spaces per TAB
set softtabstop=4 " number of spaces in tab when editing
set expandtab " tabs are spaces

" searching related stuff
set incsearch " search while typing
set hlsearch " highlight search matches
set ignorecase " search ignore case
set smartcase " case sensitive if you input cap letter, otherwise ignore case

" misc things
set lazyredraw " redraw only when needed

" ctrlp settings
let g:ctrlp_match_window='bottom,order:ttb,min:1,max:10,results:100'
let g:ctrlp_switch_buffer=0
let g:ctrlp_working_path_mode=0
let g:ctrlp_user_command='ag %s -l --nocolor --hidden -g ""'

" better-whitespace settings
let g:strip_whitespace_on_save=1
