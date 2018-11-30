" Thanks to @alepez

" Use global conf TODO make it more flexy 
let g:ycm_global_ycm_extra_conf = '~/.dotfiles/nvim/plugged/YouCompleteMe/.ycm_extra_conf.py'

" load local ycm configuration silently.
let g:ycm_confirm_extra_conf = 0

" Enable UltiSnips for YCM
let g:ycm_use_ultisnips_completer = 1

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'


nnoremap <leader>yg :YcmCompleter GoTo<CR>
nnoremap <leader>yt :YcmCompleter GetType<CR>
nnoremap <leader>yp :YcmCompleter GetParent<CR>
nnoremap <leader>yf :YcmCompleter FixIt<CR>
