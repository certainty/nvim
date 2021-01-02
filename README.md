## My NVIM setup

### Installation 

On mac

```
cd ~/.config
git clone git@github.com:certainty/nvim.git
cd nvim
make
```

#### Install all plugins

I'm using a lua based packager.
So on first startup simply run `:PackerInstall` in neovim.
This sets up all the required plugins and you should be ready to go


### Directory layout

I'm following pretty much the standard vim config layout.
However it's worth mentioning how plugins are configured.

As a general rule of thumb I try to configure my plugins in lua,
which means you can find the config in `lua/plugin-config`.

Some plugins are not well supported with lua config or I just haven't figured it out yet.
In this case I put the config (which is vimscript) into `plugin-config`.

### Key mappings

I use which-key which is configured via `keys/which-key.vim`.

