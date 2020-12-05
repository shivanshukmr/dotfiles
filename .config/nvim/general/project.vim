let s:RCs_dir = "~/dev/ProjectRCs/"
let s:current_dir_name = split(expand('%:p:h'),'/')[-1]
autocmd DirChanged,VimEnter * silent! exec "so ".s:RCs_dir.s:current_dir_name."/vimrc"
