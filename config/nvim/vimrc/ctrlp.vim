" Ctrlp

let g:ctrlp_map = '<C-p>'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_by_filename = 0 " 0: use full path, 1: use filename only
let g:ctrlp_switch_buffer = 'E' " Jump to the file with <CR>
let g:ctrlp_open_multiple_files = 'i' " open selected files in hidden buffers

if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor
  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif
