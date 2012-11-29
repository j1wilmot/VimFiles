" load pathogen.vim 
call pathogen#infect()
syntax on
filetype plugin indent on

" Tabs and shift
set shiftwidth=2
set softtabstop=2
set tabstop=2

" autoindent new lines
" set smartindent

set number " Show line numbers

" === Invisible Characters === "
" Shortcut to toggle `set list`
nmap <leader>l :set list!<CR>

" Symbols for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬
					
" Invisible characters color
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

set hidden " Create hidden buffer without confirm 
set ruler  " Always show ruler

set list " show hidden chars by default

colorscheme vividchalk

