return {
	{
		"m4xshen/autoclose.nvim",
		event = { "BufReadPre", "BufNewFile" },
		config = function()
			require("autoclose").setup()
		end,
	},
	{
		"windwp/nvim-ts-autotag",
		event = { "BufReadPre", "BufNewFile" },
		config = function()
			local opts = {
				opts = {
					enable_close = true, -- Auto close tags
					enable_rename = true, -- Auto rename pairs of tags
					enable_close_on_slash = false, -- Auto close on trailing </
				},
			}

			require("nvim-ts-autotag").setup(opts)
		end,
	},
}
