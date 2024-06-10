return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
          ensure_installed = { "terraform","lua","bash","json","yaml","go","rego","robot" },
          auto_install = true,
          highlight = { enable = true },
          indent = { enable = true }
        })
  end
}
