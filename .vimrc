set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle
Plugin 'gmarik/Vundle.vim'

" Syntax Plugins
Plugin 'pangloss/vim-javascript'
Plugin 'kchmck/vim-coffee-script'
Plugin 'wavded/vim-stylus'
Plugin 'nono/vim-handlebars'
Plugin 'tfnico/vim-gradle'
Plugin 'tpope/vim-markdown'
Plugin 'rosstimson/scala-vim-support'
Plugin 'vim-scripts/csv.vim'
Plugin 'tpope/vim-git'
Plugin 'mmalecki/vim-node.js'
Plugin 'vim-ruby/vim-ruby'
Plugin 'elzr/vim-json'
Plugin 'tpope/vim-haml'
Plugin 'burnettk/vim-angular'
Plugin 'udalov/kotlin-vim'
Plugin 'mxw/vim-jsx'
Plugin 'fatih/vim-go'

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
Plugin 'kien/ctrlp.vim'

call vundle#end()
filetype plugin on
filetype plugin indent on
syntax on

" Theme
set background=dark
colorscheme base16-railscasts
highlight clear SignColumn
highlight VertSplit    ctermbg=236
highlight ColorColumn  ctermbg=237
highlight LineNr       ctermbg=236 ctermfg=240
highlight CursorLineNr ctermbg=236 ctermfg=240
highlight CursorLine   ctermbg=236
highlight StatusLineNC ctermbg=238 ctermfg=0
highlight StatusLine   ctermbg=240 ctermfg=12
highlight IncSearch    ctermbg=3   ctermfg=1
highlight Search       ctermbg=1   ctermfg=3
highlight Visual       ctermbg=3   ctermfg=0
highlight Pmenu        ctermbg=240 ctermfg=12
highlight PmenuSel     ctermbg=3   ctermfg=1
highlight SpellBad     ctermbg=0   ctermfg=1

" Settings
set number
set nowrap
set hlsearch
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set ttyfast
set gdefault
set noerrorbells
set shortmess=atI
set scrolloff=3
set backspace=indent,eol,start
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
set viminfo+=n~/.vim/info
if exists("&undodir")
	set undodir=~/.vim/undo
endif

" Misc
nnoremap <D-/> :NERDComToggleComment<CR>
nnoremap <leader>n :NERDTreeToggle<CR>
let NERDTreeHijackNetrw = 0
autocmd vimenter * if !argc() | NERDTree | wincmd l | endif
let NERDTreeIgnore=['^components/', '^node_modules/']
au VimEnter * if argc() && isdirectory(expand('%')) | cd % | NERDTree | wincmd l | new | wincmd j | q | endif
