local remap = vim.api.nvim_set_keymap

-- Replace 'f' with 1 character sneak
remap('n', 'f', '<Plug>Sneak_f', { noremap = false })
remap('n', 'F', '<Plug>Sneak_F', { noremap = false })
remap('x', 'f', '<Plug>Sneak_f', { noremap = false })
remap('x', 'F', '<Plug>Sneak_F', { noremap = false })
remap('o', 'f', '<Plug>Sneak_f', { noremap = false })
remap('o', 'F', '<Plug>Sneak_F', { noremap = false })
-- Replace 't' with 1 character sneak
remap('n', 't', '<Plug>Sneak_t', { noremap = false })
remap('n', 'T', '<Plug>Sneak_T', { noremap = false })
remap('x', 't', '<Plug>Sneak_t', { noremap = false })
remap('x', 'T', '<Plug>Sneak_T', { noremap = false })
remap('o', 't', '<Plug>Sneak_t', { noremap = false })
remap('o', 'T', '<Plug>Sneak_T', { noremap = false })
-- Two character sneak
remap('n', 's', '<Plug>Sneak_s', { noremap = false })
remap('n', 'S', '<Plug>Sneak_S', { noremap = false })

