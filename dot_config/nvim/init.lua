require("config.lazy")

require("ibl").setup()
require('Comment').setup()
require("nvim-tree").setup()

local autocmd = vim.api.nvim_create_autocmd

autocmd("TermOpen", {
  pattern = "*",
  callback = function ()
    vim.opt.number = false
    vim.cmd ':startinsert'
  end
})

vim.opt.shiftwidth = 2
vim.opt.number = true
vim.opt.mouse = ""
vim.opt.encoding = "utf-8"
vim.cmd("colorscheme nordfox")

local set = vim.keymap.set

set("n", "<C-n>", ":NvimTreeOpen <CR>")

set("n", "<Up>", "<Nop>")
set("n", "<Donw>", "<Nop>")
set("n", "<Left>", "<Nop>")
set("n", "<Right>", "<Nop>")
