return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.diagnostics.terraform_validate,
        null_ls.builtins.formatting.terraform_fmt,
        --null_ls.builtins.formatting.rego,
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.diagnostics.golangci_lint
        --null_ls.builtins.formatting.d2_fmt
--        null_ls.builtins.,
      },
    })
    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
  end,
}
