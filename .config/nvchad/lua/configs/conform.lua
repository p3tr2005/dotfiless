local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "biome" },
    html = { "biome" },
    javascript = { "biome" },
    typescript = { "biome" },
    tsx = { "biome" },
    go = { "gofumpt" },
    json = { "biome" },
    rust = { "rustfmt" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

return options
