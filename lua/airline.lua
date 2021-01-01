vim.g['airline#extensions#tabline#enabled'] = 1
vim.g.airline_powerline_fonts = 1
vim.g.airline_theme = 'onedark'

function! LspStatus() abort
  let status = luaeval('require("lsp-status").status()')
  return trim(status)
endfunction
call airline#parts#define_function('lsp_status', 'LspStatus')
call airline#parts#define_condition('lsp_status', 'luaeval("#vim.lsp.buf_get_clients() > 0")')
