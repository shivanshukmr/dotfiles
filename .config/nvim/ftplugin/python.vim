let b:ale_linters = ['flake8']
let b:ale_fixers = ['black', 'isort']
let b:ale_fix_on_save = 1

set tags=./tags;,tags,~/.local/lib/python3.9/site-packages/tags
