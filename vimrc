" load pathogen.vim
call pathogen#infect()

" Display options
colorscheme vividchalk

" Misc
filetype plugin indent on
syntax on
set hidden " Create hidden buffer without confirm
set wildmenu " completion hints
"Auto-completion menu
set wildmode=list:longest
set ruler  " Always show ruler
set list " show hidden chars by default
set number " Show line numbers
set noswapfile "Do not save swap files
set scrolloff=5

" Tabs and shift
set autoindent smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

 "Always show the status line
set laststatus=2

"Better line wrapping
set wrap
set textwidth=79
set formatoptions=qrn1

" Backup/swap files
set backupdir^=~/.vim/_backup//    " where to put backup files.
set directory^=~/.vim/_temp//      " where to put swap files.

" viminfo: remember certain things when we exit
" (http://vimdoc.sourceforge.net/htmldoc/usr_21.html)
"   %    : saves and restores the buffer list
"   '100 : marks will be remembered for up to 30 previously edited files
"   /100 : save 100 lines from search history
"   h    : disable hlsearch on start
"   "500 : save up to 500 lines for each register
"   :100 : up to 100 lines of command-line history will be remembered
"   n... : where to save the viminfo files
set viminfo=%100,'100,/100,h,\"500,:100,n~/.vim/viminfo

" Symbols for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬
set listchars+=trail:·            " show trailing spaces as dots

" Invisible characters color
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

" Search settings
" ===================
" Case insensitive search
set ignorecase
set smartcase
" Highlight search hits
set hlsearch
set incsearch
set showmatch

" Mappings
let mapleader=","
let localmapleader=","

" Source the vimrc file after saving it. This way, you don't have to reload
" Vim to see the changes.
if has("autocmd")
	autocmd bufwritepost .vimrc source $MYVIMRC
endif

" easier window navigation
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" Map display invisible characters
nmap <leader>l :set list!<CR>

" Map ex mode to run q macro (see http://www.reddit.com/r/vim/comments/1v2agp/ex_mode_should_i_learn_it_or_just_remap_shiftq_so/)
nmap Q @q

" Plugins
"=================
nmap <leader>g :NERDTreeFind<cr>
nmap <leader>G :NERDTreeClose<cr>

"Buffergator
"Open buffergator at top of screen, full screen width
let g:buffergator_viewport_split_policy = "T"

"NERDcommenter
" TODO get this to work
"nmap <D-/> <Leader>ci

let g:vroom_use_vimux = 1
let g:vroom_clear_screen = 1

"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%81v.\+/

" highlight traliing whitespace
match ErrorMsg '\s\+$'

" function to delete trailing whitespace
nnoremap <Leader>rtw :%s/\s\+$//e<CR>
