return {
    "nvim-treesitter/nvim-treesitter", 
    branch = 'master', 
    lazy = false, 
    build = ":TSUpdate",
    config = function()
        local opts = {
            ensure_installed = { "go", "rust", "tsx", "html", "css", "json", "markdown", "sql", "typescript", "javascript", "toml", "yaml" },
            auto_install = true,
            highlight = {
                enable = true
            }
        }

        require('nvim-treesitter.configs').setup(opts)
    end
}
