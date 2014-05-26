set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

" Themes
Bundle 'chriskempson/base16-vim'

" Syntax Plugins
Bundle 'pangloss/vim-javascript'
Bundle 'kchmck/vim-coffee-script'
Bundle 'wavded/vim-stylus'
Bundle 'uggedal/go-vim'
Bundle 'nono/vim-handlebars'
Bundle 'tfnico/vim-gradle'
Bundle 'tpope/vim-markdown'
Bundle 'rosstimson/scala-vim-support'
Bundle 'vim-scripts/csv.vim'
Bundle 'tpope/vim-git'
Bundle 'mmalecki/vim-node.js'
Bundle 'vim-ruby/vim-ruby'

" Utilities
Bundle 'scrooloose/nerdcommenter'
Bundle 'ervandew/supertab'
Bundle 'vim-scripts/ZoomWin'
Bundle 'mileszs/ack.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'
Bundle 'ap/vim-css-color'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'Lokaltog/vim-powerline'
Bundle 'vim-scripts/CycleColor'

filetype plugin on
filetype plugin indent on
syntax on

set guifont=Source\ Code\ Pro\ for\ Powerline:h12
set number
set nowrap
set hlsearch
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set clipboard=unnamed
set ttyfast
set gdefault
set noerrorbells
set shortmess=atI
set scrolloff=3
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
set viminfo+=n~/.vim/info
if exists("&undodir")
	set undodir=~/.vim/undo
endif

nnoremap <D-/> :NERDComToggleComment<CR>
nnoremap <leader>n :NERDTreeToggle<CR>
let NERDTreeHijackNetrw = 0
autocmd vimenter * if !argc() | NERDTree | wincmd l | endif
let NERDTreeIgnore=['^components/', '^node_modules/']
au VimEnter * if argc() && isdirectory(expand('%')) | cd % | NERDTree | wincmd l | new | wincmd j | q | endif
let g:Powerline_symbols = 'fancy'

 "
 " Brief help
 " :BundleList          - list configured bundles
 " :BundleInstall(!)    - install(update) bundles
 " :BundleSearch(!) foo - search(or refresh cache first) for foo
 " :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
 "
 " see :h vundle for more details or wiki for FAQ
 " NOTE: comments after Bundle command are not allowed..
