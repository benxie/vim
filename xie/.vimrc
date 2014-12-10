set ttyfast
set nu
syntax enable
set background=dark
colorscheme zenburn
"colorscheme autumn
set showmatch
set showmode
set hlsearch
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
execute pathogen#infect()

"Enable filetype plugins
filetype indent on
filetype plugin on 

"if !has('gui_running')
""	    let g:solarized_termtrans=1
""			if (&t_Co >= 256 || $TERM == 'xterm-256color')
""			else
""				let g:solarized_termcolors=16
""			endif
""endif


set laststatus=2 " Always show the status line
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



