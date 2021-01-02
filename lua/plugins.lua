vim.cmd 'packadd cfilter'
vim.cmd 'packadd packer.nvim'

local init = function () 
  use {'wbthomason/packer.nvim', opt = true}

  -- find and replace
  use 'ChristianChiarulli/far.vim'

  -- Theming
  use 'joshdick/onedark.vim'
  use 'vim-airline/vim-airline'

  -- The default stuff you need
  use {
    'mhinz/vim-startify',
    config = "require('modules.startify')"
  }

  use {
    'thaerkh/vim-workspace',
    config = "require('modules.workspace')"
  }

  use {
    'junegunn/fzf',
    run = './install --bin'
  }

  use {
    'junegunn/fzf.vim',
    config = "require('modules.fzf')"
  }

  use {
    'tpope/vim-commentary',
    'tpope/vim-repeat',
    'tpope/vim-sleuth',
    'jiangmiao/auto-pairs',
    'machakann/vim-sandwich',
    'preservim/nerdcommenter',
    'godlygeek/tabular',
    'airblade/vim-rooter',
  }

  -- Nerdtree
  use {
    'scrooloose/nerdtree',
    config = "require('modules.nerdtree')"
  }

  use {
    'ryanoasis/vim-devicons'
  }

  -- Text Object plugins
  use {
    'wellle/targets.vim',
    'tpope/vim-surround',
    'coderifous/textobj-word-column.vim',
    'tommcdo/vim-exchange',
    'chaoren/vim-wordmotion'
  }

  -- For autocompletion
  use {
    'nvim-lua/completion-nvim',
    config = "require('modules.completion')"
  }

  use {
    'justinmk/vim-sneak',
    config = "require('modules.sneak')"
  }

  -- Git
  use {
     'editorconfig/editorconfig-vim',
     'airblade/vim-gitgutter',
     'tpope/vim-fugitive',
     'tpope/vim-rhubarb',
     'rhysd/git-messenger.vim'
  }

  -- term
  use {
    'voldikss/vim-floaterm',
    config = "require('modules.floaterm')"
  }

  use 'mbbill/undotree'

  use 'psliwka/vim-smoothie'

  -- Which-Key
  use 'liuchengxu/vim-which-key'

  -- Async tasks
  use {
    'skywind3000/asynctasks.vim',
    'skywind3000/asyncrun.vim'
  }

  -- LSP
  use {
    'neovim/nvim-lspconfig',
    config = "require('modules.lsp')",
  }
  use 'nvim-lua/lsp-status.nvim'

  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    config = "require('modules.treesitter')",
  }

  -- Haskell
  use {
    'neovimhaskell/haskell-vim',
    'Twinside/vim-hoogle',
    ft = 'haskell'
  }
end

return require('packer').startup(init)
