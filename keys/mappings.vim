let mapleader=" "
nnoremap <Space> <Nop>

" Navigate splits
nnoremap <silent> <leader>wh <C-w>h<CR>
nnoremap <silent> <leader>wj <C-w>j<CR>
nnoremap <silent> <leader>wk <C-w>k<CR>
nnoremap <silent> <leader>wl <C-w>l<CR>


 " TAB in general mode will move to text buffer
nnoremap <silent> <TAB> :bnext<CR>
  " SHIFT-TAB will go back
nnoremap <silent> <S-TAB> :bprevious<CR>
