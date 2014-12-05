set ttyfast
set nu
"syntax enable
set background=dark
"colorscheme solarized
"colorscheme github
"colorscheme codeschool
"colorscheme elda
"colorscheme developer
"colorscheme oceandeep
"colorscheme emacs
colorscheme zenburn
"colorscheme jelleybeans
"colorscheme jellybeans
set showmatch
set showmode
set autoindent
set smartindent
"set cindent

set shiftwidth=2
set tabstop=2

execute pathogen#infect()
"filetype plugin indent on

"Set CtrlP
set runtimepath^=~/.vim/bundle/ctrlp.vim

if !has('gui_running')
	    let g:solarized_termtrans=1
			if (&t_Co >= 256 || $TERM == 'xterm-256color')
			else
				let g:solarized_termcolors=16
			endif
endif

"ShortKey for NERDTree"
let mapleader = ","
nmap <leader>t :NERDTreeTabsToggle<cr>
nmap <leader>f :NERDTreeTabsFind<cr>
nmap <leader>m :NERDTreeMirrorOpen<cr>
