let g:exrc#names = ['.exrc']
let g:exrc#cache_file = $XDG_CACHE_HOME.'/exrc_cache'

autocmd BufRead,BufNewFile .exrc.local setfiletype vim
