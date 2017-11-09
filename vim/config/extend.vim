autocmd BufNewFile *.py exec ":call SetPyTitle()"

func SetPyTitle()
    call setline(1, "# -*- coding: utf-8 -*-")
    
endfunc
