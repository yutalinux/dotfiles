return {
	'romgrk/barbar.nvim',
	dependencies = {
		'lewis6991/gitsigns.nvim',
		'nvim-tree/nvim-web-devicons',
	},
	opts = {},
	init = function() vim.g.barbar_auto_setup = false end,
	version = '^1.0.0',
}
