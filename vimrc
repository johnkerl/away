
behave xterm
set nobackup
set nohlsearch
set noincsearch
set noshowmode
set cpoptions=aABcdeFs
set exrc
set modeline
set modelines=5
set encoding=utf-8
set autoindent
set nocindent
set noignorecase
set nonovice
set nowrapscan
set ts=8
set background=dark
set formatoptions=ql
set vb t_vb= "No beeping
syntax on " Enable language-specific syntax highlighting.

"Leader for two-key sequences
map , \

map \e :set hlsearch<CR>
map \E :set nohlsearch<CR>
map \i :set ic<CR>
map \I :set noic<CR>
map \a :set ai<CR>
map \A :set noai<CR>

map \n :se nu<CR>
map \N :se nonu<CR>
map \l :se list<CR>
map \L :se nolist<CR>

map \2 :se ts=2<CR>
map \3 :se ts=3<CR>
map \4 :se ts=4<CR>
map \8 :se ts=8<CR>

map <C-h> :.!bash<CR>j

" Set mark, format, return to mark. Without the mark, the cursor would be at
" the top of the file after the %!...
map \g mz:%!gofmt<CR>'z

map e <C-e>

map ; :
" Show current line number
map - :.=<CR>
" Show last line number
map _ :$=<CR>
" Insert a space & keep the cursor position still
map <C-k> i <ESC>
" Indent the current line by a tab
map <C-a> I	<ESC>
" Unindent the current line by its leading character (e.g. a tab)
map <C-u> 0x

" Next file
map <C-n> :n<CR>
" Reflow the current paragraph
map <C-p> gqip}}{j
" Reflow the current line and the one below.  Nice with auto-repeat.
map <C-x> gqj
" Replace current character with space and move right.  Nice with auto-repeat.
map <C-d> r l
" Move to next file, with save.
map <C-o> :w<CR>:n<CR>

" ================================================================
" Language-specific separators.  Uppercase is equal signs; lowercase is dashes.
" ,S and ,s for shell:
" # ================================================================
" # ----------------------------------------------------------------
"
" ,P and ,p for C++-style comments:
" // ================================================================
" // ----------------------------------------------------------------
"
" ,J and ,j for just the separator:
" ================================================================
" ----------------------------------------------------------------
"
" etc.

map \c 0i(*A*)
map \m O(* 64A-A*)
map \M O(* 64A=A*)
" C++-style
map \p O// 64A-
map \P O// 64A=
" - - - instead of -----
map \q O// 32A -
map \Q O// 32A =
map \= O// 32A -
" Shell-style (Python, Ruby, ...)
map \s O# 64A-
map \S O# 64A=
" LaTeX-style
map \t O%% 64A-
map \T O%% 64A=
map \f Oi 64A-
map \F Oi 64A=
map \j O64A-
map \J O64A=

" ================================================================

au BufNewFile,BufRead Makefile* set ts=8
au BufNewFile,BufRead Makefile* set noexpandtab
au BufNewFile,BufRead Makefile* map <C-a> I<TAB><ESC>
au BufNewFile,BufRead Makefile* map <C-u> 0x

au BufNewFile,BufRead configure.ac set ts=8
au BufNewFile,BufRead configure.ac set noexpandtab
au BufNewFile,BufRead configure.ac map <C-a> I<TAB><ESC>
au BufNewFile,BufRead configure.ac map <C-u> 0x

au BufNewFile,BufRead *.[ch] set ts=4
au BufNewFile,BufRead *.[ch] set noexpandtab
au BufNewFile,BufRead *.[ch] map <C-a> I<TAB><ESC>
au BufNewFile,BufRead *.[ch] map <C-u> 0x

au BufNewFile,BufRead *.[ly] set ts=4
au BufNewFile,BufRead *.[ly] set noexpandtab
au BufNewFile,BufRead *.[ly] map <C-a> I<TAB><ESC>
au BufNewFile,BufRead *.[ly] map <C-u> 0x

au BufNewFile,BufRead *.[d] set ts=4
au BufNewFile,BufRead *.[d] set noexpandtab
au BufNewFile,BufRead *.[d] map <C-a> I<TAB><ESC>
au BufNewFile,BufRead *.[d] map <C-u> 0x

au BufNewFile,BufRead *.go set ts=4
au BufNewFile,BufRead *.go set noexpandtab
au BufNewFile,BufRead *.go map <C-a> I<TAB><ESC>
au BufNewFile,BufRead *.go map <C-u> 0x

au BufNewFile,BufRead *.py set ts=4
au BufNewFile,BufRead *.py set expandtab
au BufNewFile,BufRead *.py map <C-a> I    <ESC>
au BufNewFile,BufRead *.py map <C-u> 0xxxx

au BufNewFile,BufRead py* set ts=4
au BufNewFile,BufRead py* set expandtab
au BufNewFile,BufRead py* map <C-a> I    <ESC>
au BufNewFile,BufRead py* map <C-u> 0xxxx

au BufNewFile,BufRead pgr set ts=4
au BufNewFile,BufRead pgr set expandtab
au BufNewFile,BufRead pgr map <C-a> I    <ESC>
au BufNewFile,BufRead pgr map <C-u> 0xxxx

:autocmd FileType python set ts=4
:autocmd FileType python set expandtab
:autocmd FileType python map <C-a> I    <ESC>
:autocmd FileType python map <C-u> 0xxxx

au BufNewFile,BufRead *.[rR] set ts=2
au BufNewFile,BufRead *.[rR] set expandtab
au BufNewFile,BufRead *.[rR] map <C-a> I  <ESC>
au BufNewFile,BufRead *.[rR] map <C-u> 0xx

