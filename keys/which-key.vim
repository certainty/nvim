let mapleader=" "
nnoremap <Space> <Nop>

" Navigate splits
nnoremap <silent> <leader>wh <C-w>h<CR>
nnoremap <silent> <leader>wj <C-w>j<CR>
nnoremap <silent> <leader>wk <C-w>k<CR>
nnoremap <silent> <leader>wl <C-w>l<CR>


" Map leader to which_key
nnoremap <silent> <leader> :silent <c-u> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '→'
" set timeoutlen=100
let g:which_key_display_names = {'<CR>': '↵', '<TAB>': '⇆'}
let g:which_key_timeout = 100

" Manage buffers
" b is for buffers
let g:which_key_map.b = {
      \ 'name' : '+buffer' ,
      \ 'b' : [':Buffers'  , 'buffers'],
      \ '1' : ['b1'        , 'buffer 1'],
      \ '2' : ['b2'        , 'buffer 2'],
      \ 'd' : [':bdelete'  , 'delete-buffer'],
      \ 'h' : [':Startify' , 'home buffer'],
      \ 'f' : [':bfirst'   , 'first-buffer'],
      \ 'l' : [':blast'    , 'last-buffer'],
      \ 'n' : [':bnext'    , 'next-buffer'],
      \ 'p' : [':bprevious', 'previous-buffer'],
      \ }

let g:which_key_map.c = { 
      \     'name': '+comment',
      \         'c' : ['<Plug>NERDCommenterToggle' , 'toggle'],
      \         '$' : ['<Plug>NERDComenterToEOL'   , 'to EOL'],
      \         'i' : ['<Plug>NERDComenterInvert'  , 'invert'],
      \         'm' : ['<Plug>NERDComenterMinimal' , 'minimal'],
      \         'y' : ['<Plug>NERDComenterYank'    , 'yank'],
      \       }

" Manage Windows
" w is for windows
let g:which_key_map.w = {
      \ 'name' : '+windows',
      \ 'v' : [':vsplit'   , 'split vertically'],
      \ 'H' : [':split'    , 'split horizontally'],
      \ 'c' : ['<C-W>c'    , 'close window'],
      \ 'w' : ['<C-W>w'    , 'next window'],
      \ 'h' : [':wincmd h' , 'left'],
      \ 'j' : [':wincmd j' , 'down'],
      \ 'k' : [':wincmd k' , 'up'],
      \ 'l' : [':wincmd l' , 'right'],
      \ 'p' : [':wincmd p' , 'previous'],
      \ '=' : ['<C-W>='    , 'balance'],
      \ '/' : ['Windows'   , 'fzf-window'],
      \ }


" Finding stuff
" / is for finding
let g:which_key_map['/'] = {
      \ 'name' : '+search' ,
      \ 'f' : [':Files'    , 'files'],
      \ 'b' : [':Buffers'  , 'buffers'],
      \ 'g' : [':GFiles'  , 'git files'],
      \ 'c' : [':Commits'  , 'git commits'],
      \ 'r' : [':Rg'  , 'rg search'],
      \ 'h' : [':History/'              , 'history'],
      \ 'C' : [':Commands'              , 'commands'],
      \ 'l' : [':BLines'                , 'current buffer'],
      \ 'G' : [':GFiles?'               , 'modified git files'],
      \ 'L' : [':Lines'                 , 'lines'] ,
      \ 'm' : [':Marks'                 , 'marks'] ,
      \ 'w' : [':Windows'               , 'search windows'],
      \ 'y' : [':Filetypes'             , 'file types'],
      \ 'z' : [':FZF'                   , 'FZF'],
      \ }


" LSP specific stuff
" l is for lsp
command! -nargs=0 LspCmdGotoDecl :lua vim.lsp.buf.declaration()
command! -nargs=0 LspCmdGotoDef :lua vim.lsp.buf.definition()
command! -nargs=0 LspCmdGotoImpl :lua vim.lsp.buf.implementation()
command! -nargs=0 LspCmdRefs :lua vim.lsp.buf.references()
command! -nargs=0 LspCmdHover :lua vim.lsp.buf.hover()
command! -nargs=0 LspCmdSigHelp :lua vim.lsp.buf.signature_help()
command! -nargs=0 LspCmdTypeDef :lua vim.lsp.buf.type_definition()
command! -nargs=0 LspCmdDocSymbol :lua vim.lsp.buf.document_symbol()
command! -nargs=0 LspCmdWsSymbol :lua vim.lsp.buf.workspace_symbol()

command! -nargs=0 LspCmdCodeAction :lua vim.lsp.buf.code_action()
command! -nargs=0 LspCmdLineDiag :lua vim.lsp.buf.show_line_diagnostics()
command! -nargs=0 LspCmdRefRename :lua vim.lsp.buf.rename()
command! -nargs=0 LspCmdFormatting :lua vim.lsp.buf.formatting()
command! -nargs=0 LspCmdIncomingCalls :lua vim.lsp.buf.incoming_calls()
command! -nargs=0 LspCmdOutgoingCalls :lua vim.lsp.buf.outgoing_calls()

let g:which_key_map.l = {
      \ 'name' : '+lsp' ,
      \ '.': [':e ~/.config/nvim/plug-config/lsp.vim', 'config'],
      \ 'a' : { 
      \     'name': '+action',
      \       'a' : [':LspCmdCodeAction' , 'line action'],
      \     },
      \ 'h' : { 
      \     'name': '+documentation',
      \       'd' : [':LspCmdHover'        , 'documentation'],
      \       's' : [':LspCmdSigHelp'      , 'signature help'],
      \       'S' : [':LspCmdDocSymbol'    , 'document symbol'],
      \       'w' : [':LspCmdWsSymbol'    , 'document workspace symbol'],
      \       't' : [':LspCmdTypeDef'      , 'type definition'],
      \     },
      \ 'g' : { 
      \     'name': '+goto',
      \       'd' : [':LspCmdGotoDef'       , 'definition'],
      \       'D' : [':LspCmdGotoDecl'      , 'declaration'],
      \       'i' : [':LspCmdGotoImpl'      , 'implementation'],
      \       'r' : [':LspCmdRefs'          , 'references'],
      \       'o' : [':LspCmdOutgoingCalls' , 'outgoing'],
      \       'I' : [':LspCmdIncomingCalls' , 'incoming'],
      \      },
      \ 'f' : { 
      \     'name': '+format',
      \       'f' : [':LspCmdFormatting'     , 'formatting'],
      \      },
      \ 'r' : { 
      \     'name': '+refactor',
      \       'r' : [':LspCmdRefRename'     , 'rename'],
      \      },
      \ }

" Git 
" g is for git
let g:which_key_map.g = {
      \ 'name' : '+git' ,
      \ 'a' : [':Git add .'                        , 'add all'],
      \ 'A' : [':Git add %'                        , 'add current'],
      \ 'b' : [':Git blame'                        , 'blame'],
      \ 'B' : [':GBrowse'                          , 'browse'],
      \ 'c' : [':Git commit'                       , 'commit'],
      \ 'd' : [':Git diff'                         , 'diff'],
      \ 'D' : [':Gdiffsplit'                       , 'diff split'],
      \ 'g' : [':GGrep'                            , 'git grep'],
      \ 'G' : [':Gstatus'                          , 'status'],
      \ 'h' : [':GitGutterLineHighlightsToggle'    , 'highlight hunks'],
      \ 'H' : ['<Plug>(GitGutterPreviewHunk)'      , 'preview hunk'],
      \ 'i' : [':Gist -b'                          , 'post gist'],
      \ 'j' : ['<Plug>(GitGutterNextHunk)'         , 'next hunk'],
      \ 'k' : ['<Plug>(GitGutterPrevHunk)'         , 'prev hunk'],
      \ 'l' : [':Git log'                          , 'log'],
      \ 'm' : ['<Plug>(git-messenger)'             , 'message'],
      \ 'p' : [':Git push'                         , 'push'],
      \ 'P' : [':Git pull'                         , 'pull'],
      \ 'r' : [':GRemove'                          , 'remove'],
      \ 's' : ['<Plug>(GitGutterStageHunk)'        , 'stage hunk'],
      \ 't' : [':GitGutterSignsToggle'             , 'toggle signs'],
      \ 'u' : ['<Plug>(GitGutterUndoHunk)'         , 'undo hunk'],
      \ 'v' : [':GV'                               , 'view commits'],
      \ 'V' : [':GV!'                              , 'view buffer commits'],
      \ }

" file actions
let g:which_key_map.f = {
      \ 'name' : '+file' ,
      \ '.' : [ ':e $MYVIMRC' , 'open init' ],
      \ 'f' : [':Files'    , 'files'],
      \ 'r' : [':History'    , 'recent files'],
      \ 'w' : [ ':e $HOME/.config/nvim/keys/which-key.vim', 'open which-key config']
      \ }


" Text actions including find and replace
" x is for text
let g:which_key_map.x = {
      \ 'name' : '+text' ,
      \ '=' : [':Tabularize /='    , 'align on ='],
      \ ':' : [':Tabularize /::'   , 'align on ::'],
      \ '-' : [':Tabularize /-'    , 'align on -'],
      \ ',' : [':Tabularize /,'    , 'align on ,'],
      \ 'r' : [':Farr --source=vimgrep'    , 'find & replace in buffer'],
      \ 'R' : [':Farr --source=rgnvim'     , 'find & replace in project'],
      \ 'f' : [':Neoformat'        , 'format buffer'],
      \ 'w' : [':StripWhitespace'        , 'strip whitespace'],
      \ 'c' : ['<Plug>NERDCommenterToggle'        , 'comment'],
      \ }


" Tasks
" r is for run
let g:which_key_map.r = {
      \ 'name' : '+run' ,
      \ 'b' : [':AsyncTask -pos=floaterm project-build'     , 'build project'],
      \ 't' : [':AsyncTask -pos=floaterm project-test'      , 'test project'],
      \ 'c' : [':AsyncTask -pos=floaterm project-clean'     , 'clean project'],
      \ 'R' : [':AsyncTask -pos=floaterm project-run'     , 'run project'],
      \ 'e' : [':AsyncTaskEdit'               , 'edit local tasks'],
      \ 'f' : [':AsyncTaskFzf'                , 'find task'],
      \ 'g' : [':AsyncTaskEdit!'              , 'edit global tasks'],
      \ 'h' : [':AsyncTaskList!'              , 'list hidden tasks'],
      \ 'l' : [':CocList tasks'               , 'list tasks'],
      \ 'm' : [':AsyncTaskMacro'              , 'macro help'],
      \ 'o' : [':copen'                       , 'open task view'],
      \ 'r' : [':AsyncTask -pos=floaterm file-run'          , 'run file'],
      \ 'p' : [':AsyncTask -pos=floaterm project-run'       , 'run project'],
      \ 'x' : [':cclose'                      , 'close task view'],
      \ }

" Terminal
" t is for terminal
let g:which_key_map.t = {
      \ 'name' : '+terminal' ,
      \ ';' : [':FloatermNew --wintype=normal --height=6'       , 'terminal'],
      \ 'g' : [':FloatermNew lazygit'                           , 'git'],
      \ 'd' : [':FloatermNew lazydocker'                        , 'docker'],
      \ 'h' : [':FloatermNew htop'                        , 'htop'],
      \ 't' : [':FloatermToggle'                                , 'toggle'],
      \ }

let g:which_key_map.p = {
      \ 'name' : '+packer' ,
      \ 'i' : [':PackerInstall' , 'install'],
      \ 'u' : [':PackerUpdate'  , 'update'],
      \ 's' : [':PackerSync'    , 'sync'],
      \ 'c' : [':PackerCompile' , 'compile'],
      \ 'C' : [':PackerClean'   , 'clean'],
      \ }


""A is for actions
let g:which_key_map.A = {
      \ 'name' : '+actions' ,
      \ 'n' : [':set nonumber!'          , 'line-numbers'],
      \ 'r' : [':set norelativenumber!'  , 'relative line nums'],
      \ 's' : [':let @/ = ""'            , 'remove search highlight'],
      \ 'u' : [ ':UndotreeToggle'  , 'undo tree'],
      \ }

call which_key#register('<Space>', "g:which_key_map")

