return {
  "stevearc/conform.nvim",
  lazy = false,
  opts = {
    formatters_by_ft = {
      python = { "isort", "black" },
      javascript = { "prettier" },
      typescript = { "prettier" },
      json = { "prettier" },
      lua = { "stylua" },
    },
    format_on_save = {
      timeout_ms = 2000, -- Macでもタイムアウト対策で長めに
      lsp_fallback = true,
    },
  },
}

