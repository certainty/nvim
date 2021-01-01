vim.g.workspace_session_directory = vim.fn.expand('~/.vim/session/')
vim.g.workspace_undodir = vim.fn.expand('~/.vim/undodir')
vim.g.workspace_autosave = 0
vim.g.workspace_autosave_ignore = {'gitcommit', 'qf', 'tagbar'}
vim.g.workspace_session_disable_on_args = 1

-- remap('n', '<Leader>ps', ':ToggleWorkspace<CR>', { noremap = true })
