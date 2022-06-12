setlocal softtabstop=4 shiftwidth=4
setlocal colorcolumn=89

if has("win32")
  source $HOME\AppData\Local\nvim-data\site\plugin\python\checker.vim
else
  source $HOME/.local/share/nvim/site/plugin/python/checker.vim
endif

nnoremap <silent> <Leader><CR> :call UsePythonLinter()<CR>
