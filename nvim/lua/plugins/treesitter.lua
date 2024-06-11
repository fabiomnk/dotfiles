return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      ensure_installed = {
        "terraform",
        "lua",
        "bash",
        "json",
        "yaml",
        "go",
        "rego",
        "robot" },
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true }
    })
    -- folds
    vim.opt.foldcolumn = "0"
    vim.opt.foldmethod = "expr"
    vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
    vim.opt.foldtext = ""

    vim.opt.foldnestmax = 3
    vim.opt.foldlevel = 99
    vim.opt.foldlevelstart = 99

    local function close_all_folds()
      vim.api.nvim_exec2("%foldc!", { output = false })
    end
    local function open_all_folds()
      vim.api.nvim_exec2("%foldo!", { output = false })
    end

    vim.keymap.set("n", "<leader>zs", close_all_folds, { desc = "[s]hut all folds" })
    vim.keymap.set("n", "<leader>zo", open_all_folds, { desc = "[o]pen all folds" })

    -- fold shortcuts
    -- zf#j creates a fold from the cursor down # lines.
    -- zf/string creates a fold from the cursor to string .
    -- zj moves the cursor to the next fold.
    -- zk moves the cursor to the previous fold.
    -- zo opens a fold at the cursor.
    -- zO opens all folds at the cursor.
    -- zm increases the foldlevel by one.
    -- zM closes all open folds.
    -- zr decreases the foldlevel by one.
    -- zR decreases the foldlevel to zero -- all folds will be open.
    -- zd deletes the fold at the cursor.
    -- zE deletes all folds.
    -- [z move to start of open fold.
    -- ]z move to end of open fold.
    --
    --

  end

}
