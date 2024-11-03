return {
  { "dinhhuy258/git.nvim" },
  { "norcalli/nvim-colorizer.lua" },
  { "lukas-reineke/indent-blankline.nvim" },
  { "numToStr/Comment.nvim" },
  { "EdenEast/nightfox.nvim" },
  
  -- lsp --
  { "neovim/nvim-lspconfig" },
  { "williamboman/mason.nvim" },
  { "williamboman/mason-lspconfig.nvim" },
  
  -- cmp --
  { "L3MON4D3/LuaSnip" },
  { "hrsh7th/nvim-cmp" },
  { "hrsh7th/cmp-nvim-lsp" },
  { "hrsh7th/cmp-buffer" },
  { "saadparwaiz1/cmp_luasnip" },
  
  -- formater linter --
  { "nvimtools/none-ls.nvim" },

  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    }
  }
}
