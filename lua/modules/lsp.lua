local nvim_lsp   = require('lspconfig')
local completion = require('completion')
local lsp_status = require('lsp-status')

-- require'lspconfig'.hls.setup{on_attach=require'completion'.on_attach}

local on_attach = function(client, bufnr)
--  diagnostic.on_attach(client, bufnr)
  completion.on_attach(client, bufnr)
  lsp_status.on_attach(client, bufnr)

  --local opts = { noremap=true, silent=true }
 -- vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
 -- vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K',  '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
 -- vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
 -- vim.api.nvim_buf_set_keymap(bufnr, 'n', 'ga', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
 -- vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gD', '<cmd>lua vim.lsp.util.show_line_diagnostics()<CR>', opts)
 -- vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
 -- vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
 -- vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gt', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
 -- vim.api.nvim_buf_set_keymap(bufnr, 'n', 'g0', '<cmd>lua vim.lsp.buf.document_symbol()<CR>', opts)
 -- vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gW', '<cmd>lua vim.lsp.buf.workspace_symbol()<CR>', opts)
 -- vim.api.nvim_buf_set_keymap(bufnr, 'n', '<Leader>de', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
 -- vim.api.nvim_buf_set_keymap(bufnr, 'n', '<Leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
 -- vim.api.nvim_buf_set_keymap(bufnr, 'n', 'pd', '<cmd>lua peek_definition()<CR>', opts)
 -- vim.api.nvim_buf_set_keymap(bufnr, 'n', '[d', ':PrevDiagnostic<CR>', opts)
 -- vim.api.nvim_buf_set_keymap(bufnr, 'n', ']d', ':NextDiagnostic<CR>', opts)
 -- vim.api.nvim_buf_set_keymap(bufnr, 'n', '[D', ':PrevDiagnosticCycle<CR>', opts)
 -- vim.api.nvim_buf_set_keymap(bufnr, 'n', ']D', ':NextDiagnosticCycle<CR>', opts)
end


lsp_status.config({
    status_symbol = '',
    indicator_errors = 'e',
    indicator_warnings = 'w',
    indicator_info = 'i',
    indicator_hint = 'h',
    indicator_ok = '✔️',
    spinner_frames = { '⣾', '⣽', '⣻', '⢿', '⡿', '⣟', '⣯', '⣷' },
})
lsp_status.register_progress()

-- Setup servers
local servers = { 'hls', 'rust_analyzer' }
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {
    on_attach = on_attach,
    capabilities = lsp_status.capabilities
  }
end



