return {
  'akinsho/toggleterm.nvim',
  version = "*",
  config = function()
    require("toggleterm").setup {
      open_mapping = [[<leader>t]],
      close_on_exit = true,
      insert_mappings = true,
      direction = 'float',
      size = 100,
    }
  end,
}

