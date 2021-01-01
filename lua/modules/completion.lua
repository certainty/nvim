local remap = vim.api.nvim_set_keymap

vim.g.completion_enable_auto_popup = 1
vim.g.completion_auto_change_source = 1
vim.g.completion_trigger_on_delete = 1
vim.g.completion_matching_ignore_case = 0
vim.g.completion_matching_strategy_list = { 'exact', 'substring' }


vim.g.completion_chain_complete_list = {
  c = {
    { complete_items = { 'buffers' } },
    { mode = { 'tags'  } },
    { mode = { 'keyn'  } },
    { mode = { '<c-p>' } },
    { mode = { '<c-n>' } }
  },
  haskell = {
    { complete_items = { 'buffers', 'lsp' } },
    { mode = { 'keyn'  } },
    { mode = { '<c-p>' } },
    { mode = { '<c-n>' } }
  },
  rust = {
    { complete_items = { 'buffers', 'lsp' } },
    { mode = { 'keyn'  } },
    { mode = { '<c-p>' } },
    { mode = { '<c-n>' } }
  },
  default = {
    { complete_items = { 'buffers' } },
    { mode = { 'keyn'  } },
    { mode = { '<c-p>' } },
    { mode = { '<c-n>' } }
  },
}

remap('i', '<Tab>',   'pumvisible() ? "<C-n>" : "<Tab>"',     { noremap = true, expr = true })
remap('i', '<S-Tab>', 'pumvisible() ? "<C-p>" : "<S-Tab>"',   { noremap = true, expr = true })
remap('i', '<Tab>', '<Plug>(completion_smart_tab)',   { noremap = false })
-- remap('i', '<C-j>', '<Plug>(completion_next_source)', { noremap = false })
-- remap('i', '<C-k>', '<Plug>(completion_prev_source)', { noremap = false })

vim.api.nvim_command('set completeopt=menuone,noinsert,noselect')
