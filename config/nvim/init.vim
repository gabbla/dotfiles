call plug#begin()

" Color themes
Plug 'morhetz/gruvbox'
Plug 'tyrannicaltoucan/vim-deep-space'
Plug 'jacoborus/tender.vim' " cpp ok go mhe
Plug 'joshdick/onedark.vim' " mhe
Plug 'ajmwagar/vim-deus' " so and so
Plug 'danilo-augusto/vim-afterglow'

" C++
Plug 'rhysd/vim-clang-format'
Plug 'preservim/nerdcommenter'

" Rust
Plug 'rust-lang/rust.vim'

" Markdown
Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
Plug 'godlygeek/tabular' " must cme before vim-markdown
"Plug 'plasticboy/vim-markdown'

" Tools
Plug 'mileszs/ack.vim'
Plug 'derekwyatt/vim-fswitch'
Plug 'vim-airline/vim-airline'
Plug 'aklt/plantuml-syntax'
Plug 'segeljakt/vim-silicon' " export buffer/selction as pictures
Plug 'unblevable/quick-scope'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sakhnik/nvim-gdb', { 'do': ':!./install.sh' }

" git
Plug 'tpope/vim-fugitive'
Plug 'shumphrey/fugitive-gitlab.vim'
Plug 'junegunn/gv.vim'
Plug 'sodapopcan/vim-twiggy'

" syntax
Plug 'kergoth/vim-bitbake'
Plug 'pboettch/vim-cmake-syntax'
Plug 'mtdl9/vim-log-highlighting'
Plug 'chaquotay/ftl-vim-syntax'
Plug 'octol/vim-cpp-enhanced-highlight'

" TODO sort
" Deprecated: replaced by https://github.com/ncm2/ncm2
" TODO fix
"Plug 'roxma/nvim-completion-manager'
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'
Plug 'ErichDonGubler/vim-sublime-monokai'
"Plug 'wakatime/vim-wakatime'
Plug 'airblade/vim-gitgutter'
Plug 'crusoexia/vim-monokai'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Must be loaded as last plugin
Plug 'ryanoasis/vim-devicons'
call plug#end()

" Theme managment
syntax on
colorscheme monokai
set background=dark
set termguicolors

" set airline theme
let g:airline_theme = 'tender'

" Source shortcuts
source ~/.dotfiles/nvim/vimrc/shortcuts.vim
" Source settings from settings.vim
source ~/.dotfiles/nvim/vimrc/settings.vim

" Trigger a highlight in the appropriate direction when pressing these keys:
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

" Close vim if onlu NERDTree is open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeQuitOnOpen = 1

set guifont=Fira\ Code\ 12

" Custom settings
source ~/.dotfiles/nvim/vimrc/ack.vim
source ~/.dotfiles/nvim/vimrc/airline.vim
source ~/.dotfiles/nvim/vimrc/clang-format.vim
source ~/.dotfiles/nvim/vimrc/coc.vim
source ~/.dotfiles/nvim/vimrc/fswitch.vim
source ~/.dotfiles/nvim/vimrc/fugitive.vim
source ~/.dotfiles/nvim/vimrc/fzf.vim
source ~/.dotfiles/nvim/vimrc/instant-markdown.vim
source ~/.dotfiles/nvim/vimrc/nerdcommenter.vim
source ~/.dotfiles/nvim/vimrc/nerdtree.vim
source ~/.dotfiles/nvim/vimrc/silicon.vim
source ~/.dotfiles/nvim/vimrc/vim-cpp-enhanced-highlight.vim
source ~/.dotfiles/nvim/vimrc/ycm.vim

set tags=./.tags;,.tags;

" UltiSnips keybindings
let g:UltiSnipsExpandTrigger="<c-o>"
