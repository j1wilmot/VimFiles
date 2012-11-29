" load pathogen.vim 
call pathogen#infect()
syntax on
filetype plugin indent on

" Tabs and shift
set shiftwidth=4 softtabstop=4 tabstop=4

" autoindent new lines
" set smartindent

" Show line numbers
set number

" === Invisible Characters === "
" Shortcut to toggle `set list`
nmap <leader>l :set list!<CR>

" Symbols for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

" Invisible characters color
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

" Create hidden buffer without confirm 
set hidden

set vb
