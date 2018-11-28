call plug#begin()

" Color themes
Plug 'crusoexia/vim-monokai'

" C++
Plug 'Valloric/YouCompleteMe'
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}

" TODO sort
Plug 'roxma/nvim-completion-manager'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'ErichDonGubler/vim-sublime-monokai'
Plug 'wakatime/vim-wakatime'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'pboettch/vim-cmake-syntax'
call plug#end()

" Theme managment
syntax on
colorscheme monokai

" Source settings from settings.vim
source ~/.dotfiles/nvim/vimrc/settings.vim


" Start NerdTree
autocmd vimenter * NERDTree
" Close vim if onlu NERDTree is open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeQuitOnOpen = 1

" Custom settings
source ~/.dotfiles/nvim/vimrc/nerdtree.vim
source ~/.dotfiles/nvim/vimrc/ycm.vim



" UltiSnips keybindings
let g:UltiSnipsExpandTrigger="<c-o>"



