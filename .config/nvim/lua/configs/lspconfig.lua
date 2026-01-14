require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "lua_ls", "rust_analyzer", "gopls", "ts_ls", "cssls", "svelte", "tailwindcss", "intelephense", "emmet_language_server"}

vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers 
