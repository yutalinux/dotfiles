return {
  "NeogitOrg/neogit",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "sindrets/diffview.nvim",
    "nvim-telescope/telescope.nvim",
    "ibhagwan/fzf-lua",
    "echasnovski/mini.pick",
  },
  config = function ()
    local neogit = require('neogit')
    neogit.setup {}
    local set = vim.keymap.set
    set("n", "<leader>g", function () neogit.open() end)
  end
}
