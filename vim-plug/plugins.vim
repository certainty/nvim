" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin(stdpath('data') . '/plugged')
  
  " Themes
  Plug 'whatyouhide/vim-gotham'
  Plug 'joshdick/onedark.vim'

  Plug 'keith/parsec.vim'

  Plug 'vim-airline/vim-airline'

  " Default plugins
  Plug 'jiangmiao/auto-pairs'
  Plug 'machakann/vim-sandwich'
  Plug 'preservim/nerdcommenter'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-sleuth'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'liuchengxu/vim-which-key'
  Plug 'tpope/vim-surround'
  Plug 'godlygeek/tabular'
  Plug 'airblade/vim-rooter'


  Plug 'mhinz/vim-startify'

  " Nerdtree
  Plug 'scrooloose/nerdtree'
  Plug 'ryanoasis/vim-devicons'

  " Git
  Plug 'editorconfig/editorconfig-vim'
  Plug 'airblade/vim-gitgutter'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-rhubarb'
  Plug 'rhysd/git-messenger.vim'

  "Term
  Plug 'voldikss/vim-floaterm'
  Plug 'mbbill/undotree'

  " Markdown Preview
  Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & npm install'  }

  " async tasks
  Plug 'skywind3000/asynctasks.vim'
  Plug 'skywind3000/asyncrun.vim'

  " Programming
  "
  " LSP support
  "  "Plug 'neoclide/coc.nvim', { 'branch': 'release' }
  " Native neovim lsp client
  Plug 'neovim/nvim-lspconfig'
  Plug 'nvim-lua/completion-nvim'
  Plug 'sdiehl/vim-ormolu'

  " Rust neovim client instead of coc
"  Plug 'autozimu/LanguageClient-neovim', {
"     \ 'branch': 'next',
"     \ 'do': 'bash install.sh',
"     \ }
"
" Other tools for programming
  Plug 'sheerun/vim-polyglot'
  Plug 'sbdchd/neoformat'
  Plug 'jparise/vim-graphql'
  Plug 'vim-test/vim-test'

  "search and replace
  Plug 'ChristianChiarulli/far.vim'

  "Plugins
  Plug 'SirVer/ultisnips'
  " collection of snippees
  Plug 'honza/vim-snippets'

call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
