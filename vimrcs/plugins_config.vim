""""""""""""""""""""""""""""""
" => Load pathogen paths
""""""""""""""""""""""""""""""
let s:vim_runtime = expand('<sfile>:p:h')."/.."
call pathogen#infect(s:vim_runtime.'/sources_forked/{}')
call pathogen#infect(s:vim_runtime.'/sources_non_forked/{}')
call pathogen#infect(s:vim_runtime.'/my_plugins/{}')
call pathogen#helptags()

""""""""""""""""""""""""""""""
" => Load all plugin configs
""""""""""""""""""""""""""""""
let s:vim_plugins_path = expand('<sfile:p:h')."/plugins"
""for f in split(glob(s:vim_plugins_path.'/*.vim'), '\n')
for f in split(glob('~/.vim_runtime/vimrcs/plugins/*.vim'), '\n')
    exe 'source' f
endfor
