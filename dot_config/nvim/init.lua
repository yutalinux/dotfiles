require("config.lazy")

require("ibl").setup()
require("Comment").setup()
require("neo-tree").setup({
  filesystem = {
    hijack_netrw_behavior = "open_default",
    filtered_items = {
      visible = true,
    }
  },
})

require("mason").setup()
require("mason-lspconfig").setup()
require("mason-lspconfig").setup_handlers {
  function(server_name)
    require("lspconfig")[server_name].setup {}
  end,
}

capabilities = require("cmp_nvim_lsp").default_capabilities()

vim.opt.completeopt = "menu,menuone,noselect"

local cmp = require("cmp")
cmp.setup({
  snippet = {
    expand = function(args)
      require("luasnip").lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ["<C-p>"] = cmp.mapping.select_prev_item(),
    ["<C-n>"] = cmp.mapping.select_next_item(),
    ["<C-d>"] = cmp.mapping.scroll_docs(-4),
    ["<C-f>"] = cmp.mapping.scroll_docs(4),
    ["<C-Space>"] = cmp.mapping.complete(),
    ["<C-e>"] = cmp.mapping.close(),
    ["<CR>"] = cmp.mapping.confirm({ select = true }),
  }),
  sources = cmp.config.sources({
    { name = "nvim_lsp" },
    { name = "luasnip" },
  }, {
    { name = "buffer" },
  })
})

vim.opt.shiftwidth = 2
vim.opt.number = true
vim.opt.mouse = ""
vim.opt.encoding = "utf-8"
vim.opt.title = true
vim.g.mapleader = " "

vim.cmd("colorscheme nordfox")

local set = vim.keymap.set
local autocmd = vim.api.nvim_create_autocmd

set("n", "<C-n>", ":Neotree <CR>")
set('n', '<leader>t', ':belowright 15 split | terminal <CR>')
set("n", "<Up>", "<Nop>")
set("n", "<Donw>", "<Nop>")
set("n", "<Left>", "<Nop>")
set("n", "<Right>", "<Nop>")
set('t', '<Esc>', [[<C-\><C-n>]])

autocmd("TermOpen", {
  callback = function()
    vim.opt_local.number = false
    vim.opt_local.relativenumber = false
    vim.cmd('startinsert')
  end
})
