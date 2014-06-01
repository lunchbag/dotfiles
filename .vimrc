set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle
Plugin 'gmarik/Vundle.vim'

" Themes
Plugin 'chriskempson/base16-vim'

" Syntax Plugins
Plugin 'pangloss/vim-javascript'
Plugin 'kchmck/vim-coffee-script'
Plugin 'wavded/vim-stylus'
Plugin 'uggedal/go-vim'
Plugin 'nono/vim-handlebars'
Plugin 'tfnico/vim-gradle'
Plugin 'tpope/vim-markdown'
Plugin 'rosstimson/scala-vim-support'
Plugin 'vim-scripts/csv.vim'
Plugin 'tpope/vim-git'
Plugin 'mmalecki/vim-node.js'
Plugin 'vim-ruby/vim-ruby'
Plugin 'elzr/vim-json'

" Utilities
Plugin 'scrooloose/nerdcommenter'
Plugin 'ervandew/supertab'
Plugin 'vim-scripts/ZoomWin'
Plugin 'mileszs/ack.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'ap/vim-css-color'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Lokaltog/vim-powerline'
Plugin 'vim-scripts/CycleColor'

call vundle#end()
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
