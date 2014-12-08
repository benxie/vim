set ttyfast
set nu
syntax enable
set background=dark
colorscheme zenburn
set showmatch
set showmode
set hlsearch
set ignorecase
set shiftwidth=2
set tabstop=2
set autoread
set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500
execute pathogen#infect()

"Enable filetype plugins
filetype indent on
filetype plugin on 

if !has('gui_running')
	    let g:solarized_termtrans=1
			if (&t_Co >= 256 || $TERM == 'xterm-256color')
			else
				let g:solarized_termcolors=16
			endif
endif


set laststatus=2 " Always show the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \Line:\ %l " Format the status line
 
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



