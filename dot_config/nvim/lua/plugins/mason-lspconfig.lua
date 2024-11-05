return {
  "williamboman/mason-lspconfig.nvim",
  dependencies = {
    "neovim/nvim-lspconfig",
    'williamboman/mason.nvim'
  },
  lazy = false,
  config = function ()
    local lsp_servers = { "html", "cssls", "ts_ls", "jsonls", "lua_ls", "rust_analyzer" }
    local diagnostics = { "typos_lsp" }

    require("mason").setup()
    require("mason-lspconfig").setup {
      ensure_installed = vim.tbl_flatten({ lsp_servers, diagnostics }),
    }

    require("mason-lspconfig").setup_handlers {
      function(server_name)
        require("lspconfig")[server_name].setup {}
      end,
    }
  end
}
