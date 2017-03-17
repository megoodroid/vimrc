set history=500

filetype plugin on
filetype indent on

set autoread

let mapleader=","
let g:mapleader=","

nmap <leader>w :w!<cr>

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
autocmd filetype javascript,less set ts=2
autocmd filetype javascript,less set sw=2

set ai
set si
set wrap

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

map <leader>cb :Bclose<cr>:tabclose<cr>gT

au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

"set laststatus=2

"set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c

map 0 ^

"nmap <M-j> mz:m+<cr>`z
"nmap <M-k> mz:m-2<cr>`z

func! HasPaste()
    if &paste
        return 'PASTE MODE '
    endif
    return ''
endfunc

func! DeleteTrailingWS()
    exe "normal mz"
    %s\s+$//ge
    exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.coffee :call DeleteTrailingWS()

noremap <leader>m mmHmt:%s<C-V><cr>//ge<cr>'tzt'm

map <leader>nb :e ~/buffer<cr>
map <leader>x :e ~/buffer.md<cr>
map <leader>q :q!<cr>
map <leader>b ^
map <leader>e $

map <leader>pp :setlocal paste!<cr>

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
nnoremap <space> <c-f>

set wildignore+=*/node_modules/*,*.so,*.swp,*.zip
