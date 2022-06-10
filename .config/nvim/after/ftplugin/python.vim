setlocal softtabstop=4 shiftwidth=4
setlocal colorcolumn=80

if has("win32")
  source $HOME\AppData\Local\nvim-data\site\plugin\python\linter.vim
else
  source $HOME/.local/share/nvim/site/plugin/python/linter.vim
endif

nnoremap <silent> <Leader><CR> :call UsePythonLinter()<CR>
