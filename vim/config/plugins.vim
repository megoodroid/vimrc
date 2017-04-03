execute pathogen#infect()

let g:NERDTreeWinPos="right"

map <leader>nn :NERDTreeToggle<cr>

noremap <leader>f :CtrlPMRU<cr>
let g:user_emmet_install_global=0


let g:user_emmet_settings = {
\  'javascript' : {
\      'extends' : 'jsx',
\  },
\}

autocmd filetype html,css,javascript.jsx EmmetInstall
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

let g:jsx_ext_required = 0
"let g:jsx_pragma_required = 1

"colorscheme wombat
