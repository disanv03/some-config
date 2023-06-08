nnoremap j h
vnoremap j h
nnoremap k k
vnoremap k k
nnoremap l j
vnoremap l j
nnoremap m l
vnoremap m l
inoremap $$ <Esc>
vnoremap $$ <Esc>
nnoremap Fin $
nnoremap <Home> 0

highlight Normal ctermfg=yellow

syntax enable   " Enable syntax highlighting
set number      " Enable line numbers

" Configure Ruby syntax highlighting
au BufNewFile,BufRead *.rb set filetype=ruby

" Configure Java syntax highlighting
au BufNewFile,BufRead *.java set filetype=java

" Configure HTML syntax highlighting
au BufNewFile,BufRead *.html,*.htm set filetype=html

highlight String ctermfg=darkred



