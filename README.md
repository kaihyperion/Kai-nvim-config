# NVIM config setting README
This is my config setting for NeoVim


## Structure
```
/Users/kyperion/.config/nvim
├── init.lua
├── lua
│   ├── config
│   │   └── lazy.lua
│   ├── core
│   │   ├── keymaps.lua
│   │   └── options.lua
│   └── plugins
│       ├── catppuccin.lua
│       ├── init.lua
│       ├── neo-tree.lua
│       ├── telescope.lua
│       └── treesitter.lua
└── README.md
```
## Flow
1.`nvim starts`
2. `init.lua` runs (sets leader, loadss core stuff)
3. `require("config.lazy")` runs
4. `lazy.setup({ spec = { import = "plugins" } })`
5. `lua/plugins/init.lua` returns plugin list
6. Each plugin file gets loaded

## How it Works
- **init.lua**: The first file nvim reads. Sets `mapleader` before anything else, then loads core settings and lazy.nvim
- **core/**: Pure vim settings and keymaps (no plugins)
- **config/lazy.lua**: Bootstraps lazy.nvim package manager and tells it to load all plugins from `plugins/`
- **plugins/init.lua**: Index file that imports all individual plugin configs
- **plugins/*.lua**: Each plugin gets its own file with config and keymaps together
