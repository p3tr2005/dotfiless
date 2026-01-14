local options = {
  -- ========================
  -- FORMATTERS PER FILETYPE
  -- ========================
  formatters_by_ft = {
    lua = { "stylua" },

    css = { "prettierd" },
    html = { "prettierd" },
    javascript = { "prettierd" },
    javascriptreact = { "prettierd" },
    typescript = { "prettierd" },
    typescriptreact = { "prettierd" },
    json = { "prettierd" },
    markdown = { "prettierd" },

    -- PHP (IMPORTANT FIX)
    -- php = { "php_cs_fixer" },
  },

  -- ========================
  -- FORMAT ON SAVE
  -- ========================
  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true, -- fallback to LSP if no formatter
  },
}

return options
