" Settings for neo vim


set lazyredraw		" only redraw when needed
set nospell		" disable spell check

set autoindent		" always autoindent
set clipboard=unnamed	" yank to system clipboard
set colorcolumn=80	" show column at 80th char
set cursorline		" highlight current line
set expandtab		" tabs to space
set list		" show invisible chars
set listchars=eol:¬,tab:▸\ ,trail:·,nbsp:⎵ " replace whitechars
set number relativenumber " Hybrid number mode
set showmode		" show the current mode
set tabstop=4		" Default to 8
set shiftwidth=4
set showcmd         " show command line

set scrolloff=10

set wildmenu
set wildmode=list:longest,full

set noswapfile " disable swapfile

set undofile " Keep undo history
set undodir=/tmp

" Highlight extra whitespaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
