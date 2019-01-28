" leader as space
let mapleader = "\<Space>"

" Search with ag, the silver searcher
nnoremap <leader>f :Ack!<space>

" Search yanked text with the silver searcher
nnoremap <leader>F :Ack! '<C-r>0'<CR>

" Search visual selction with ag
vnoremap <leader>f y:Ack! '<C-r>0'<CR>

" Close buffers without pain
nnoremap <silent> <leader>x :bd<CR>

" Next buffer
nnoremap <silent> <leader>n :bn<CR>

" Prev buffer
nnoremap <silent> <leader>p :bp<CR>

" reload current file
nnoremap <silent> <leader><Space> :e<CR>

" undo all the changes in the current file
nnoremap <silent> <leader>u :e!<CR>
