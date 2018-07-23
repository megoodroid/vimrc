let g:NERDTreeWinPos="right"

let NERDTreeIgnore=["\.pyc$"]
map <leader>nn :NERDTreeToggle<cr>

let g:ctrlp_map=""
noremap <leader>f :CtrlPMRU<cr>
let g:user_emmet_install_global=0


let g:user_emmet_settings = {
\  'javascript.jsx' : {
\      'extends' : 'jsx',
\  },
\}

autocmd FileType html,htmldjango,css,javascript.jsx,php EmmetInstall
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

let g:jsx_ext_required = 0
let g:jsx_pragma_required = 1
"autocmd FileType javascript.jsx colorscheme desert 
autocmd FileType javascript.jsx set si


nmap <F4> :TagbarToggle<CR>
let g:tagbar_width = 40 "设置宽度，默认为40  
"autocmd VimEnter,BufRead *.py nested :call tagbar#autoopen(1) "打开vim时自动打开  

let g:SimpylFold_docstring_preview = 1
let g:SimpylFold_fold_import = 0
set foldmethod=indent
set foldlevel=5

let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'
let g:ycm_path_to_python_interpreter = '/usr/bin/python'
let g:ycm_key_list_select_completion = ['<Enter>', '<Down>']
map <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>

let python_highlight_all=1

let g:syntastic_python_checkers = ['flake8']
" detect lua nse filetype
au BufRead,BufNewFile *.nse              set filetype=lua

set hidden
nnoremap <C-N> :bnext<CR>
nnoremap <C-P> :bprev<CR>

" Point YCM to the Pipenv created virtualenv, if possible
" At first, get the output of 'pipenv --venv' command.
let pipenv_venv_path = system('pipenv --venv')
" The above system() call produces a non zero exit code whenever
" a proper virtual environment has not been found.
" So, second, we only point YCM to the virtual environment when
" the call to 'pipenv --venv' was successful.
" Remember, that 'pipenv --venv' only points to the root directory
" of the virtual environment, so we have to append a full path to
" the python executable.
if shell_error == 0
  let venv_path = substitute(pipenv_venv_path, '\n', '', '')
  let g:ycm_python_binary_path = venv_path . '/bin/python'
else
  let g:ycm_python_binary_path = 'python'
endif

au BufWrite * :Autoformat
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0
