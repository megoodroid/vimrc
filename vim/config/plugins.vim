execute pathogen#infect()

let g:NERDTreeWinPos="right"

map <leader>nn :NERDTreeToggle<cr>

noremap <leader>f :CtrlPMRU<cr>

let g:user_emmet_install_global=0
autocmd filetype html,css EmmetInstall
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")
