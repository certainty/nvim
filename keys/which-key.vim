" Map leader to which_key
nnoremap <silent> <leader> :silent <c-u> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '→'
" set timeoutlen=100

"nnoremap <leader>? :CocSearch <C-R>=expand("<cword>")<CR><CR>
"let g:which_key_map['?'] = 'search word'

" Single mappings
let g:which_key_map['p'] = [ ':Files'           , 'search files' ]

" Manage buffers
" b is for buffers
let g:which_key_map.b = {
      \ 'name' : '+buffer' ,
      \ '1' : ['b1'        , 'buffer 1'],
      \ '2' : ['b2'        , 'buffer 2'],
      \ 'd' : [':bdelete'  , 'delete-buffer'],
      \ 'h' : [':Startify' , 'home buffer'],
      \ 'f' : [':bfirst'   , 'first-buffer'],
      \ 'l' : [':blast'    , 'last-buffer'],
      \ 'n' : [':bnext'    , 'next-buffer'],
      \ 'p' : [':bprevious', 'previous-buffer'],
      \ '?' : [':Buffers'  , 'fzf-buffer'],
      \ }


" Manage tabs
" T is for Tabs
let g:which_key_map.T = {
      \ 'name' : '+tabline' ,
      \ 'b' : [':XTabListBuffers'         , 'list buffers'],
      \ 'd' : [':XTabCloseBuffer'         , 'close buffer'],
      \ 'D' : [':XTabDeleteTab'           , 'close tab'],
      \ 'h' : [':XTabHideBuffer'          , 'hide buffer'],
      \ 'i' : [':XTabInfo'                , 'info'],
      \ 'l' : [':XTabLock'                , 'lock tab'],
      \ 'm' : [':XTabMode'                , 'toggle mode'],
      \ 'n' : [':tabNext'                 , 'next tab'],
      \ 'N' : [':XTabMoveBufferNext'      , 'buffer->'],
      \ 't' : [':tabnew'                  , 'new tab'],
      \ 'p' : [':tabprevious'             , 'prev tab'],
      \ 'P' : [':XTabMoveBufferPrev'      , '<-buffer'],
      \ 'x' : [':XTabPinBuffer'           , 'pin buffer'],
      \ }


" Manage Windows
" w is for windows
let g:which_key_map.w = {
      \ 'name' : '+windows' ,
      \ 'v' : [':vsplit'    , 'split vertically'],
      \ 'H' : [':split'     , 'split horizontally'],
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
      \ 't' : [':Tags'                  , 'project tags'],
      \ 'T' : [':BTags'                 , 'buffer tags'],
      \ 's' : [':CocList snippets'      , 'snippets'],
      \ 'w' : [':Windows'               , 'search windows'],
      \ 'y' : [':Filetypes'             , 'file types'],
      \ 'z' : [':FZF'                   , 'FZF'],
      \ }


" LSP specific stuff
" c is for code
let g:which_key_map.c = {
      \ 'name' : '+lsp' ,
      \ '.' : [':CocConfig'                          , 'config'],
      \ ';' : ['<Plug>(coc-refactor)'                , 'refactor'],
      \ 'a' : ['<Plug>(coc-codeaction)'              , 'line action'],
      \ 'A' : ['<Plug>(coc-codeaction-selected)'     , 'selected action'],
      \ 'b' : [':CocNext'                            , 'next action'],
      \ 'B' : [':CocPrev'                            , 'prev action'],
      \ 'c' : [':CocList commands'                   , 'commands'],
      \ 'd' : ['<Plug>(coc-definition)'              , 'definition'],
      \ 'D' : ['<Plug>(coc-declaration)'             , 'declaration'],
      \ 'e' : [':CocList extensions'                 , 'extensions'],
      \ 'f' : ['<Plug>(coc-format-selected)'         , 'format selected'],
      \ 'F' : ['<Plug>(coc-format)'                  , 'format'],
      \ 'h' : ['<Plug>(coc-float-hide)'              , 'hide'],
      \ 'i' : ['<Plug>(coc-implementation)'          , 'implementation'],
      \ 'I' : [':CocList diagnostics'                , 'diagnostics'],
      \ 'j' : ['<Plug>(coc-float-jump)'              , 'float jump'],
      \ 'l' : ['<Plug>(coc-codelens-action)'         , 'code lens'],
      \ 'n' : ['<Plug>(coc-diagnostic-next)'         , 'next diagnostic'],
      \ 'N' : ['<Plug>(coc-diagnostic-next-error)'   , 'next error'],
      \ 'o' : [':Vista!!'                            , 'outline'],
      \ 'O' : [':CocList outline'                    , 'outline'],
      \ 'p' : ['<Plug>(coc-diagnostic-prev)'         , 'prev diagnostic'],
      \ 'P' : ['<Plug>(coc-diagnostic-prev-error)'   , 'prev error'],
      \ 'q' : ['<Plug>(coc-fix-current)'             , 'quickfix'],
      \ 'r' : ['<Plug>(coc-references)'              , 'references'],
      \ 'R' : ['<Plug>(coc-rename)'                  , 'rename'],
      \ 's' : [':CocList -I symbols'                 , 'references'],
      \ 't' : ['<Plug>(coc-type-definition)'         , 'type definition'],
      \ 'u' : [':CocListResume'                      , 'resume list'],
      \ 'U' : [':CocUpdate'                          , 'update CoC'],
      \ 'z' : [':CocDisable'                         , 'disable CoC'],
      \ 'Z' : [':CocEnable'                          , 'enable CoC'],
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
      \ 'S' : [':!git status'                      , 'status'],
      \ 't' : [':GitGutterSignsToggle'             , 'toggle signs'],
      \ 'u' : ['<Plug>(GitGutterUndoHunk)'         , 'undo hunk'],
      \ 'v' : [':GV'                               , 'view commits'],
      \ 'V' : [':GV!'                              , 'view buffer commits'],
      \ }

" file actions
let g:which_key_map.f = {
      \ 'name' : '+file' ,
      \ '.' : [ ':e $MYVIMRC' , 'open init' ]
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
      \ 'c' : [':commentary'        , 'comment'],
      \ 'C' : [':<,>Commentary'        , 'comment block'],
      \ }


" Tasks
" r is for run
let g:which_key_map.r = {
      \ 'name' : '+run' ,
      \ 'b' : [':AsyncTask -pos=floaterm project-build'     , 'build project'],
      \ 't' : [':AsyncTask -pos=floaterm project-test'      , 'test project'],
      \ 'c' : [':AsyncTask -pos=floaterm project-clean'     , 'clean project'],
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
      \ 't' : [':FloatermToggle'                                , 'toggle'],
      \ }


""A is for actions
let g:which_key_map.A = {
      \ 'name' : '+actions' ,
      \ 'e' : [':CocCommand explorer'    , 'explorer'],
      \ 'm' : [':MarkdownPreview'        , 'markdown preview'],
      \ 'M' : [':MarkdownPreviewStop'    , 'markdown preview stop'],
      \ 'n' : [':set nonumber!'          , 'line-numbers'],
      \ 'r' : [':set norelativenumber!'  , 'relative line nums'],
      \ 's' : [':let @/ = ""'            , 'remove search highlight'],
      \ 'u' : [ ':UndotreeToggle'  , 'undo tree'],
      \ }

call which_key#register('<Space>', "g:which_key_map")
