set nocp
set tags=tags
" set tagbsearch
" set tagrelative
set cst
" Highlight search
set hlsearch
set modeline
set ls=2
set number
" set csprg=gtags-cscope
" cscope add /home/christoph/workspace/linux/mptcp/GTAGS
"

" highlight text over 80char limit
set colorcolumn=80

map <ScrollWheelUp> <C-Y><C-Y>
map <ScrollWheelDown> <C-E><C-E>

filetype plugin on

nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-l> :wincmd l<CR>

" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest,preview

" Taglist shortcut
map <F4> :TlistToggle<CR>
let Tlist_WinWidth=50

" Highlight current line
set cursorline
hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white

" Pasting
set pastetoggle=<F2>
map <F3> oChristoph
map <S-F3> oCheers,<Return>Christoph

" Python-files
au FileType python setlocal tabstop=4 expandtab shiftwidth=4 softtabstop=4

" Pathogen - runtime plugins in separate directories
execute pathogen#infect()

" signify options
let g:signify_vcs_list = [ 'git' , 'svn' ]
let g:signify_sign_overwrite = 1
let g:signify_line_highlight = 0

" gtags
nnoremap <C-]> <esc>:Gtags <CR>
nnoremap <C-s> <esc>:Gtags -s <CR>
nnoremap <C-r> <esc>:Gtags -r <CR>
nnoremap <C-t> <esc>:bp<CR>
command  -nargs=1 Go Gtags -P <args>

" show function-name
fun! ShowFuncName()
  let lnum = line(".")
  let col = col(".")
  echohl ModeMsg
  echo getline(search("^[^ \t#/]\\{2}.*[^:]\s*$", 'bW'))
  echohl None
  call search("\\%" . lnum . "l" . "\\%" . col . "c")
endfun
map f :call ShowFuncName() <CR>

