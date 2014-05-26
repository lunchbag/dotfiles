" Resize Splits on Vim Resize
source ~/.vim/plugin_config.vim

if has("gui_running")
  autocmd VimResized * wincmd =
end

set background=dark
colorscheme base16-eighties
set guioptions=aAce
set transparency=0
set guifont=Source\ Code\ Pro\ for\ Powerline:h12
