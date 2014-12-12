""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" Plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
"plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'mileszs/ack.vim'
Plugin 'rking/ag.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'tpope/vim-commentary'
Plugin 'Shougo/unite.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'mattn/emmet-vim'
Plugin 'kien/ctrlp.vim'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
""Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
""Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
""Plugin 'user/L9', {'name': 'newL9'}

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
" Put your non-Plugin stuff after this line"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set ttyfast
set nu
syntax enable
set background=dark
colorscheme zenburn
"colorscheme autumn
"colorscheme desert
set showmatch
set showmode
set hlsearch
set incsearch
set ignorecase
set shiftwidth=2
set tabstop=2
set autoread
set ai "Auto indent
set smartindent "Smart indent
set wrap "Wrap lines
set backspace=2
" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500
""execute pathogen#infect()

"Enable filetype plugins
filetype indent on
filetype plugin on 
set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \Line:\ %l\/%L " Format the status line
 
"""""""""""""""""""""
"My Map
""""""""""""""""""""
nmap - dd

""""""""""""""""""""""""""""""
" => Plugins 
"""""""""""""""""""""""""""""""
"Set CtrlP
set runtimepath^=~/.vim/bundle/ctrlp.vim
"ShortKey for NERDTree"
let mapleader = ","
nmap <leader>t :NERDTreeTabsToggle<cr>
nmap <leader>f :NERDTreeTabsFind<cr>
nmap <leader>m :NERDTreeMirrorOpen<cr>

"Go to previous file
map <Leader>p <C-^> 

"Set ac.vim
let g:agprg="ag --column"
let g:aghighlight=1

" Returns true if paste mode is enabled
function! HasPaste()
	if &paste
		return 'PASTE MODE  '
	en
	return ''
endfunction


autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o


