return {
  "williamboman/mason-lspconfig.nvim",
  dependencies = {
    "neovim/nvim-lspconfig",
    'williamboman/mason.nvim',
    "hrsh7th/cmp-nvim-lsp",
  },
  lazy = false,
  config = function ()
    local lsp_servers = { "html", "cssls", "ts_ls", "jsonls", "lua_ls", "rust_analyzer", "astro" }
    local diagnostics = { "typos_lsp" }
    local capabilities = require('cmp_nvim_lsp').default_capabilities()

    require("mason").setup()
    require("mason-lspconfig").setup {
      ensure_installed = vim.tbl_flatten({ lsp_servers, diagnostics }),
    }

    require("mason-lspconfig").setup_handlers {
      function(server_name)
        require("lspconfig")[server_name].setup {
	  capabilities = capabilities
	}
      end,
      ["rust_analyzer"] = function ()
	require("lspconfig").rust_analyzer.setup {
	  capabilities = capabilities,
	  settings = {
	    ['rust-analyzer'] = {
	      diagnostic = {
		refreshSupport = false
	      }
	    }
	  }
	}
      end
    }
  end
}
