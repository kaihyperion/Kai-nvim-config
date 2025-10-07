-- 1) Set leader Early (before any mapping)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"


require("core.options")
require("core.keymaps")
require("config.lazy")
