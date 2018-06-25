autocmd BufNewFile *.py exec ":call SetPyTitle()"

func SetPyTitle()
    call setline(1, "# -*- coding: utf-8 -*-")
    
endfunc

"run based on different file types
autocmd FileType python nnoremap <buffer> <F9> :!python %<cr>
autocmd FileType make nnoremap <buffer> <F9> :!make %<cr>
autocmd FileType rust nnoremap <buffer> <F9> :!rustc %<cr>
autocmd FileType python set ts=2 sw=2 softtabstop=2
