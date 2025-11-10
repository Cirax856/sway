require("config.lazy")
require("config.remap")
require("config.colors")
require("lazy").setup("plugins")

vim.opt.number = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true
vim.opt.clipboard = "unnamedplus"

vim.opt.signcolumn = "no"
vim.opt.fillchars = "eob: "
