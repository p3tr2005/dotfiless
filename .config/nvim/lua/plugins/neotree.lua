return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
	},
	lazy = false, -- neo-tree will lazily load itself
	config = function()
		local opts = {
			close_if_last_window = false,
			position = { right = true },
			toggle = true,
			window = {
				mappings = {
					["<CR>"] = "open",
					["t"] = "open_tabnew",
				},
			},
			keys = {
				{ "<C-n>", "<cmd>Neotree<CR>", desc = "Toggle Explorer" },
			},
		}
		require("neo-tree").setup(opts)
	end,
}
