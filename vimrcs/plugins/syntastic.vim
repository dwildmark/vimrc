"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Syntastic configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_c_checkers = ['clang_check']
let g:syntastic_c_clang_check_post_args = ""

let g:syntastic_auto_loc_list = 0
