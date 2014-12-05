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

if !has('gui_running')
	    let g:solarized_termtrans=1
			if (&t_Co >= 256 || $TERM == 'xterm-256color')
			else
				let g:solarized_termcolors=16
			endif
endif

"ShortKey for NERDTree"
let mapleader = ","
nmap <leader>ne :NERDTree<cr>
nmap <leader>t :NERDTreeTabsToggle<cr>
nmap <leader>f :NERDTreeTabsFind<cr>
