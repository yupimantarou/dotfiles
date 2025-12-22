---@type LazySpec
return {
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    opts = {
      -- これがあなたの「道具箱」の全リストです
      ensure_installed = {
        -- 1. Python (最強環境)
        "pyright", -- 補完
        "debugpy", -- デバッグ
        "black", -- 整形
        "isort", -- 整形

        -- 2. Docker / Config
        "dockerfile-language-server",
        "yaml-language-server",

        -- 3. Web (JS/TS/JSON)
        "typescript-language-server",
        "prettier",

        -- 4. Lua (Neovim設定用)
        "lua-language-server",
        "stylua",
      },

      auto_update = true,
      run_on_start = true,
    },
  },
}
