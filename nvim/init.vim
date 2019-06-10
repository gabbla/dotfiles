call plug#begin()

" Color themes
Plug 'morhetz/gruvbox'

" C++
Plug 'Valloric/YouCompleteMe'
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}
Plug 'rhysd/vim-clang-format'
" Markdown
Plug 'suan/vim-instant-markdown'
" Tools
Plug 'mileszs/ack.vim'
Plug 'derekwyatt/vim-fswitch'
Plug 'vim-airline/vim-airline'
Plug 'aklt/plantuml-syntax'
Plug 'kien/ctrlp.vim'

" syntax
Plug 'kergoth/vim-bitbake'
Plug 'pboettch/vim-cmake-syntax'

" TODO sort
Plug 'roxma/nvim-completion-manager'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'ErichDonGubler/vim-sublime-monokai'
Plug 'wakatime/vim-wakatime'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-fugitive'
call plug#end()

" Theme managment
syntax on
colorscheme gruvbox 
set background=dark " gruvbox dark mode


" Source shortcuts
source ~/.dotfiles/nvim/vimrc/shortcuts.vim
" Source settings from settings.vim
source ~/.dotfiles/nvim/vimrc/settings.vim


" Close vim if onlu NERDTree is open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeQuitOnOpen = 1

" Custom settings
source ~/.dotfiles/nvim/vimrc/ack.vim
source ~/.dotfiles/nvim/vimrc/airline.vim
source ~/.dotfiles/nvim/vimrc/clang-format.vim
source ~/.dotfiles/nvim/vimrc/fswitch.vim
source ~/.dotfiles/nvim/vimrc/instant-markdown.vim
source ~/.dotfiles/nvim/vimrc/nerdtree.vim
source ~/.dotfiles/nvim/vimrc/ycm.vim


" UltiSnips keybindings
let g:UltiSnipsExpandTrigger="<c-o>"



