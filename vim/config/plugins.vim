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

autocmd filetype html,css,javascript EmmetInstall
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")
