call plug#begin()

" Color themes
Plug 'morhetz/gruvbox'
Plug 'tyrannicaltoucan/vim-deep-space'
Plug 'jacoborus/tender.vim' " cpp ok go mhe
Plug 'joshdick/onedark.vim' " mhe
Plug 'ajmwagar/vim-deus' " so and so
Plug 'danilo-augusto/vim-afterglow'

" C++
Plug 'Valloric/YouCompleteMe'
"Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}
Plug 'rhysd/vim-clang-format'
Plug 'preservim/nerdcommenter'

" Markdown
Plug 'suan/vim-instant-markdown'
Plug 'godlygeek/tabular' " must cme before vim-markdown
Plug 'plasticboy/vim-markdown'

" Tools
Plug 'mileszs/ack.vim'
Plug 'derekwyatt/vim-fswitch'
Plug 'vim-airline/vim-airline'
Plug 'aklt/plantuml-syntax'
Plug 'kien/ctrlp.vim'
Plug 'segeljakt/vim-silicon' " export buffer/selction as pictures

" git
Plug 'tpope/vim-fugitive'
Plug 'sodapopcan/vim-twiggy'

" syntax
Plug 'kergoth/vim-bitbake'
Plug 'pboettch/vim-cmake-syntax'
Plug 'mtdl9/vim-log-highlighting'
Plug 'chaquotay/ftl-vim-syntax'

" TODO sort
" Deprecated: replaced by https://github.com/ncm2/ncm2
" TODO fix
"Plug 'roxma/nvim-completion-manager'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'ErichDonGubler/vim-sublime-monokai'
Plug 'wakatime/vim-wakatime'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

call plug#end()

" Theme managment
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
syntax on
colorscheme tender
set background=dark
set termguicolors

" set airline theme
let g:airline_theme = 'tender'

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
source ~/.dotfiles/nvim/vimrc/fugitive.vim
source ~/.dotfiles/nvim/vimrc/silicon.vim
source ~/.dotfiles/nvim/vimrc/instant-markdown.vim
source ~/.dotfiles/nvim/vimrc/nerdcommenter.vim
source ~/.dotfiles/nvim/vimrc/nerdtree.vim
source ~/.dotfiles/nvim/vimrc/ycm.vim


" UltiSnips keybindings
let g:UltiSnipsExpandTrigger="<c-o>"
