vim.g.mapleader = " "

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.wrap = false
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

vim.opt.cursorline = true
vim.opt.clipboard = "unnamedplus"

vim.opt.scrolloff = 999

-- allows visual block to make rectangle
-- even if one or more lines don't have
-- character on said positions
vim.opt.virtualedit = "block"

vim.opt.ignorecase = true
vim.opt.termguicolors = true

-- setup diagnostics
vim.diagnostic.config({
    virtual_text = true,
    virtual_line = false
})
