return {
  "nvim-focus/focus.nvim",
  version = "*",
  config = function()
    local config = require("focus")
    config.setup({
      enable = true,
    })

    vim.keymap.set("n", "<leader>fn", function()
      config.split_nicely()
    end, {})
  end,
}
