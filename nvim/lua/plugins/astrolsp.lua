---@type LazySpec
return {
  "AstroNvim/astrolsp",
  ---@type AstroLSPOpts
  opts = {
    -- ここに使いたいLSPのリストを書く
    servers = {
      "dockerls", -- Dockerfile用
      "yamlls", -- YAML (Docker Compose, K8s)用
      "pyright", -- Python用（すでに入っていると思いますが念の為）
    },
  },
}
