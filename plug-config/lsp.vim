 
lua <<EOF
require'lspconfig'.hls.setup{on_attach=require'completion'.on_attach}
EOF

" wrap the lua functions so that they can be used 
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
