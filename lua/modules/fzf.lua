vim.g.fzf_tags_command = 'ctags -R'

vim.g.fzf_layout = {
  up = '~90%', 
  window = { 
    width = 0.8, 
    height = 0.8,
    yoffset = 0.5,
    xoffset = 0.5,
    highlight = 'Todo', 
    border = 'sharp' 
  } 
}

vim.env.FZF_DEFAULT_OPTS = '--layout=reverse --inline-info'
vim.env.FZF_DEFAULT_COMMAND = "rg --files --hidden --glob '!.git/**'"
