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
Plug 'preservim/nerdtree'
call plug#end()

set t_Co=16
set background=dark

if v:version < 802
    packadd! dracula
endif
syntax enable
colorscheme dracula

"EXECUTE shortkey: 
let mapleader = ","
"execute Ruby script
nnoremap <leader>2 :!ruby %<CR>

"cursor back
map <leader>5 ``

" Compile the current C file with gcc
nnoremap <leader>3 :!gcc % -o %<<CR>
" Execute the compiled binary
nnoremap <leader>4 :!./%<<CR>

"save with current day format sept_22
nnoremap <leader>1 :execute "save ~/today/2023/" . substitute(strftime("%b"), '\.', '', 'g') . "_" . strftime("%d")<CR>

function! LoadDailyTemplate()
    0r ~/today/daily_template.txt
endfunction

nnoremap <leader>d :call LoadDailyTemplate()<CR>
nnoremap <leader>l :set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<,nbsp:#
