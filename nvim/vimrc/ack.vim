" Use ag instead of ack
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif
