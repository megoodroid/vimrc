let g:NERDTreeWinPos="right"

map <leader>nn :NERDTreeToggle<cr>

noremap <leader>f :CtrlPMRU<cr>
let g:user_emmet_install_global=0


let g:user_emmet_settings = {
\  'javascript.jsx' : {
\      'extends' : 'jsx',
\  },
\}

autocmd FileType html,css,javascript.jsx EmmetInstall
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

let g:jsx_ext_required = 0
"let g:jsx_pragma_required = 1

"autocmd FileType javascript.jsx colorscheme desert 
autocmd FileType javascript.jsx set si


nmap <F4> :TagbarToggle<CR>
let g:tagbar_width = 40 "设置宽度，默认为40  
autocmd VimEnter * nested :call tagbar#autoopen(1) "打开vim时自动打开  
