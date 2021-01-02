vim.api.nvim_command('syntax enable')
vim.api.nvim_command('set relativenumber')
vim.api.nvim_command('filetype plugin indent on')
vim.api.nvim_command('filetype plugin on')
vim.api.nvim_command('set splitright')
vim.api.nvim_command('set splitbelow')
vim.api.nvim_command('set showmode')
vim.api.nvim_command('set smartcase')
vim.api.nvim_command('set showtabline=2')
vim.api.nvim_command('set ts=2')
vim.api.nvim_command('set sw=2')
vim.api.nvim_command('set tabstop=2')
vim.api.nvim_command('set shiftwidth=2')
vim.api.nvim_command('set smarttab')
vim.api.nvim_command('set expandtab')
vim.api.nvim_command('set smartindent')
vim.api.nvim_command('set autoindent')
vim.api.nvim_command('set autoread')
vim.api.nvim_command('set ruler')
vim.api.nvim_command('set mouse=a')
vim.api.nvim_command('set cursorline')
vim.api.nvim_command('set nobackup')
vim.api.nvim_command('set nowritebackup')
vim.api.nvim_command('set updatetime=300')
vim.api.nvim_command('set timeoutlen=100')
vim.api.nvim_command('set clipboard=unnamedplus')
vim.api.nvim_command('set fileencoding=utf-8')
vim.api.nvim_command('set encoding=utf-8')
vim.api.nvim_command('set nowrap')
vim.api.nvim_command('set hidden')
vim.api.nvim_command('set whichwrap+=<,>,[,],h,l')
vim.api.nvim_command('set cmdheight=1')
vim.api.nvim_command('set shortmess+=c')

-- Map leaders
vim.g.mapleader = " "
vim.g.maplocalleader = ","

-- Disable providers we do not give a shit about
vim.g.loaded_python3_provider = 0
vim.g.loaded_python_provider  = 0
vim.g.loaded_ruby_provider    = 0
vim.g.loaded_perl_provider    = 0
vim.g.loaded_node_provider    = 0

-- completion
vim.api.nvim_command('set completeopt=menuone,noinsert,noselect')
