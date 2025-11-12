local c = {
    bg = '#171726',
    fg = '#D9D9D9',
    primary = '#A241BC',
    secondary = '#21214D',
    accentPurple = '#7D58B2',
    accentBlue = '#152099',
    green = '#23F0C7',
    red = '#DF2935',
    yellow = '#BFAE48',
    orange = '#F9DBBD',
    pink = '#EFC3F5',
    blue = '#63ADF2'
}

vim.api.nvim_set_hl(0, "Normal", { fg = c.fg, bg = c.bg })
vim.api.nvim_set_hl(0, "NormalNC", { fg = c.fg, bg = c.bg })

-- base highlights
vim.api.nvim_set_hl(0, "Comment", { fg = c.accentBlue, italic = true })
vim.api.nvim_set_hl(0, "Keyword", { fg = c.primary, bold = true })
vim.api.nvim_set_hl(0, "String", { fg = c.pink })
vim.api.nvim_set_hl(0, "Function", { fg = c.blue })
vim.api.nvim_set_hl(0, "Delimiter", { fg = c.orange })
vim.api.nvim_set_hl(0, "Special", { fg = c.yellow })
vim.api.nvim_set_hl(0, "Constant", { fg = c.accentPurple })
vim.api.nvim_set_hl(0, "Identifier", { fg = c.blue })
vim.api.nvim_set_hl(0, "Operator", { fg = c.red })
vim.api.nvim_set_hl(0, "@variable", { fg = c.green })
