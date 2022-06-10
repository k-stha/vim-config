setlocal softtabstop=4 shiftwidth=4
setlocal colorcolumn=80

setlocal makeprg=shellcheck\ -a\ --format=gcc\ --enable=all
nnoremap <silent> <Leader><CR> :lmake %<CR>

if has('win32')
  source $HOME\AppData\Local\nvim-data\site\plugin\sh\sh_snippet.vim
else
  source $HOME/.local/share/nvim/site/plugin/sh/sh_snippet.vim
endif
