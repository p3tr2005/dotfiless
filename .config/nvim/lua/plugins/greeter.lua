return {
	"goolord/alpha-nvim",
	-- dependencies = { 'echasnovski/mini.icons' },
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local alpha = require("alpha")
		local startify = require("alpha.themes.startify")

		local banner = [[
██████╗ ██████╗ ████████╗██████╗ 
██╔══██╗╚════██╗╚══██╔══╝██╔══██╗
██████╔╝ █████╔╝   ██║   ██████╔╝
██╔═══╝  ╚═══██╗   ██║   ██╔══██╗
██║     ██████╔╝   ██║   ██║  ██║
╚═╝     ╚═════╝    ╚═╝   ╚═╝  ╚═╝
]]

		-- Set header
		startify.section.header.val = banner

		alpha.setup(startify.opts)

		vim.cmd([[
    autocmd FileType alpha setlocal nofoldenable
]])
	end,
}
