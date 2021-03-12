set makeprg=flake8 formatprg=black\ -q\ -\ 2>/dev/null
let b:undo_ftplugin .= '|set makeprg< formatprg<'
