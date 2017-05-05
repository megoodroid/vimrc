call pathogen#infect()

set history=500

syntax on
filetype plugin indent on

set autoread

let mapleader=","
let g:mapleader=","

command W w !sudo tee % > /dev/null

set so=7

set cmdheight=2

set ignorecase
set smartcase

set hlsearch

set showmatch
set mat=2

syntax enable

set encoding=utf8

set ffs=unix,dos,mac

set nobackup
set nowb
set noswapfile

set expandtab
set smarttab
set shiftwidth=4
set tabstop=4

set ai
set si
set wrap
set nu

au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

set laststatus=2

"set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c


"nmap <M-j> mz:m+<cr>`z
"nmap <M-k> mz:m-2<cr>`z

func! HasPaste()
if &paste
    return 'PASTE MODE '
endif
return ''
endfunc

" Delete trailing white space on save, useful for some filetypes ;)
fun! CleanExtraSpaces()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    silent! %s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfun

if has("autocmd")
    autocmd BufWritePre *.txt,*.js,*.py,*.wiki,*.sh,*.coffee :call CleanExtraSpaces()
endif

command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
let l:currentBufNum = bufnr("%")
let l:alternateBufNum = bufnr("#")

if buflisted(l:alternateBufNum)
    buffer #
else
    bnext
endif

if bufnr("%") == l:currentBufNum
    new
endif

if buflisted(l:currentBufNum)
    execute("bdelete! ".l:currentBufNum)
endif
endfunction

set foldenable
"set foldmethod=syntax
"nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<cr>

set wildignore+=*/node_modules/*,*.so,*.swp,*.zip

"filetype indent
"
autocmd filetype javascript,javascript.jsx,less,css,html,xml,json set ts=2 sw=2

"key mapping
"
nmap <leader>w :w!<cr>
noremap <leader>m mmHmt:%s<C-V><cr><cr>'tzt'm
map <silent> <leader><cr> :noh<cr>

map <leader>nb :e ~/buffer<cr>
map <leader>x :e ~/buffer.md<cr>
nnoremap <leader>q :q<cr>

map 0 ^
map <leader>b ^
map <leader>e $

map <leader>pp :setlocal paste!<cr>
"nnoremap <space> <c-f>
nnoremap <space> za

noremap <C-j> <C-W>j
noremap <C-k> <C-W>k
noremap <C-h> <C-W>h
noremap <C-l> <C-W>l

map <leader>cb :Bclose<cr>:tabclose<cr>gT
map <leader>cd :cd %:p:h<cr>:pwd<cr>

"tab
map <leader>t :bn<cr>

nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

function! Expander()
  let line   = getline(".")
  let col    = col(".")
  let first  = line[col-2]
  let second = line[col-1]
  let third  = line[col]

  if first ==# ">"
    if second ==# "<" && third ==# "/"
      return "\<CR>\<C-o>==\<C-o>O"

    else
      return "\<CR>"

    endif

  else
    return "\<CR>"

  endif

endfunction

inoremap <expr> <CR> Expander()

"undo
try
    set undodir=~/.vim/temp_dirs/undodir
    set undofile
catch
endtry
