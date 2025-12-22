return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        -- インサートモード(i)の設定
        i = {
          -- "jj" を押すと "<Esc>" (エスケープ) になる
          ["jj"] = { "<Esc>", desc = "Escape insert mode" },
        },
      },
    },
  },
}

