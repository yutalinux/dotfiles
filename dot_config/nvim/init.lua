require("config.lazy")

vim.opt.shiftwidth = 2
vim.opt.number = true
vim.opt.encoding = "utf-8"
vim.opt.title = true
vim.opt.termguicolors = true
vim.g.mapleader = " "
vim.g.completeopt = "menu,menuone,noselect"
vim.g.neovide_padding_top = 4
vim.g.neovide_padding_bottom = 4

vim.cmd("colorscheme nordfox")

local set = vim.keymap.set
local autocmd = vim.api.nvim_create_autocmd

set("n", "<C-n>", ":Neotree <CR>")
set('n', '<leader>t', ':belowright 15 split | terminal <CR>')
set('t', '<Esc>', [[<C-\><C-n>]])
set("n", "<C-h>", ":bprev<CR>")
set("n", "<C-l>", ":bnext<CR>")

autocmd("TermOpen", {
  callback = function()
    vim.opt_local.number = false
    vim.opt_local.relativenumber = false
    vim.cmd('startinsert')
  end
})

