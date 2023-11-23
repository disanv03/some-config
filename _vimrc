" navigation keys
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
" optional Fin and Home
nnoremap Fin $
nnoremap <Home> 0
" Window tabs jump
nnoremap <C-w>j <C-w>h
nnoremap <C-w>k <C-w>k
nnoremap <C-w>l <C-w>j
nnoremap <C-w>m <C-w>l
vnoremap <C-w>j <C-w>h
vnoremap <C-w>k <C-w>k
vnoremap <C-w>l <C-w>j
vnoremap <C-w>m <C-w>l
" Making $$  work on visual mode
xnoremap $ $

syntax enable   " Enable syntax highlighting
set number      " Enable line numbers
set tabstop=4       " The width of a hard tabstop
set shiftwidth=4    " The size of an indent
set expandtab       " Use spaces instead of tabs

highlight String ctermfg=darkred


call plug#begin('$HOME/vimfiles/plugged')
Plug 'preservim/nerdtree'
Plug 'bling/vim-bufferline'
Plug 'andymass/vim-matchup'
call plug#end()

set t_Co=16

if v:version < 802
    packadd! dracula
endif
colorscheme dracula

" Define <leader> key
let mapleader = ","

" run ruby 
nnoremap <leader>2 :!ruby %<CR>

" cursor back
map <leader>5 ``

" Compile and exec C program
nnoremap <leader>3 :!gcc % -o %<<CR>
nnoremap <leader>4 :!./%<<CR>

" Hidden characters lists
nnoremap <leader>l :set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<,nbsp:#

" Buffer keys
nnoremap <leader>l :bprevious<CR>
nnoremap <leader>k :bnext<CR>
nnoremap <leader>x :bd<CR>

" Toggle files tree
nnoremap <leader>n :NERDTree<CR>

