Simple configuration for neovim.

## How to install
```
cd ~/.config
git clone https://github.com/MeIsHigh/nvim
```

For different linters, formatters and LSPs edit the lspconfig file to add the corresponding plugins.
Follow previous structure, changing the plugin name into the one you want to use.
For auto completion and linting edit the none-ls file to enable the formatter/linter you want, again, following the existing structure.
For possible linters, formatters and LSPs open nvim and type :Mason. This will open a window with options.
Then you can use :MasonInstall "name" to install the package you've enabled in the lua config files.
