let g:NERDTreeWinPos="right"

let NERDTreeIgnore=["\.pyc$"]
map <leader>nn :NERDTreeToggle<cr>

noremap <leader>f :CtrlPMRU<cr>
let g:user_emmet_install_global=0


let g:user_emmet_settings = {
\  'javascript.jsx' : {
\      'extends' : 'jsx',
\  },
\}

autocmd FileType html,htmldjango,css,javascript.jsx EmmetInstall
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

let g:jsx_ext_required = 0
let g:jsx_pragma_required = 1
"autocmd FileType javascript.jsx colorscheme desert 
autocmd FileType javascript.jsx set si


nmap <F4> :TagbarToggle<CR>
let g:tagbar_width = 40 "设置宽度，默认为40  
autocmd VimEnter,BufRead *.py nested :call tagbar#autoopen(1) "打开vim时自动打开  

let g:SimpylFold_docstring_preview = 1

let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'
let g:ycm_path_to_python_interpreter = '/usr/bin/python'
let g:ycm_key_list_select_completion = ['<Enter>', '<Down>']
map <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>
