" enable tabline
let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#left_sep = ''
" let g:airline#extensions#tabline#left_alt_sep = ''
" let g:airline#extensions#tabline#right_sep = ''
" let g:airline#extensions#tabline#right_alt_sep = ''

" enable powerline fonts
let g:airline_powerline_fonts = 1
" let g:airline_left_sep = ''
" let g:airline_right_sep = ''
let g:airline_theme = 'onedark'

" Register lsp-status
function! LspStatus() abort
  let status = luaeval('require("lsp-status").status()')
  return trim(status)
endfunction

call airline#parts#define_function('lsp_status', 'LspStatus')
call airline#parts#define_condition('lsp_status', 'luaeval("#vim.lsp.buf_get_clients() > 0")')
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#nvimlsp#enabled = 0
let g:airline_section_warning = airline#section#create_left(['lsp_status'])
