return {
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      local config = require("gitsigns")
      config.setup({
        current_line_blame = true,
      })
      vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", {})
      vim.keymap.set("n", "<leader>gt", ":Gitsigns toggle_current_line_blame<CR>", {})
    end,
  },
  {
    "tpope/vim-fugitive",
  },
}
