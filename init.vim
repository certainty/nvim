" Setup plug
call plug#begin(stdpath('data') . '/plugged')

  " Themes
  Plug 'whatyouhide/vim-gotham'
  Plug 'keith/parsec.vim'

  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

  " Default plugins
  Plug 'jiangmiao/auto-pairs'
  Plug 'machakann/vim-sandwich'
  Plug 'preservim/nerdcommenter'
  Plug 'tpope/vim-sleuth'
  Plug 'junegunn/fzf'

  " Nerdtree
  Plug 'scrooloose/nerdtree'
  Plug 'ryanoasis/vim-devicons'

  " Git
  Plug 'editorconfig/editorconfig-vim'
  Plug 'airblade/vim-gitgutter'
  Plug 'tpope/vim-fugitive'

  " Programming
  Plug 'neomake/neomake'
  Plug 'neoclide/coc.nvim', { 'branch': 'release' }

  Plug 'sdiehl/vim-ormolu'
call plug#end()


" Themeing
if (has("termguicolors"))
  set termguicolors
endif
colorscheme gotham

" Basics
" -----------------------------------------
nnoremap <SPACE> <Nop>
let mapleader=" "

syntax enable
set relativenumber
filetype plugin indent on
set showmode
set smartcase
set smarttab
set autoindent
set showtabline=2


" Nerdtree
" ------------------------------------------
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
nnoremap <silent> <leader>b :NERDTreeToggle<CR>

" Airline
" enable tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''
set noshowmode

" enable powerline fonts
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_theme = 'onedark'


" Windows and split
set splitright
set splitbelow

" Navigate between splits
nnoremap <silent> <leader>wh <C-w>h<CR>
nnoremap <silent> <leader>wj <C-w>j<CR>
nnoremap <silent> <leader>wk <C-w>k<CR>
nnoremap <silent> <leader>wl <C-w>l<CR>

" Neomake
call neomake#configure#automake('w')
let g:neomake_open_list = 2

