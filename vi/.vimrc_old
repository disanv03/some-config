"remap navigation keys
nnoremap j h
vnoremap j h
nnoremap k k
vnoremap k k
nnoremap l j
vnoremap l j
nnoremap m l
vnoremap m l
" $$ to escape any mode 
inoremap $$ <Esc>
vnoremap $$ <Esc>
"optional Fin and Home
nnoremap Fin $
nnoremap <Home> 0
"for windows tabs jump
nnoremap <C-w>j <C-w>h
nnoremap <C-w>k <C-w>k
nnoremap <C-w>l <C-w>j
nnoremap <C-w>m <C-w>l
vnoremap <C-w>j <C-w>h
vnoremap <C-w>k <C-w>k
vnoremap <C-w>l <C-w>j
vnoremap <C-w>m <C-w>l
"making $ work on visual mode
xnoremap $ $

highlight Normal ctermfg=yellow

syntax enable   " Enable syntax highlighting
set number      " Enable line numbers


set tabstop=4       " The width of a hard tabstop
set shiftwidth=4    " The size of an "indent"
set expandtab       " Use spaces instead of tabs

highlight String ctermfg=darkred

  
call plug#begin('$HOME/vimfiles/plugged')

" Plugin section goes here
Plug 'preservim/nerdtree'
Plug 'morhetz/gruvbox'
call plug#end()

set t_Co=16
colorscheme gruvbox
set background=dark
