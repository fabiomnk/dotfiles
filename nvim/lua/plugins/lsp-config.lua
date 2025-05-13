return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "terraformls", "tflint", "regols", "gopls" },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({
        capabilities = capabilities,
      })
      -- terraformls
      --lspconfig.terraformls.setup({
      --  capabilities = capabilities,
      --})
      --vim.api.nvim_create_autocmd({ "BufWritePre" }, {
      --  pattern = { "*.tf", "*.tfvars" },
      --  callback = function()
      --    vim.lsp.buf.format()
      --  end,
      --})
      -- terraformls
      --lspconfig.tflint.setup({
      --  capabilities = capabilities,
      --})
      lspconfig.regols.setup({
        capabilities = capabilities,
      })

      lspconfig.golangci_lint_ls.setup({
        capabilities = capabilities,
      })
      lspconfig.gopls.setup({
        capabilities = capabilities,
        settings = {
          gopls = {
            analyses = {
              unusedparams = true,
            },
            staticcheck = true,
            gofumpt = true,
          },
        },
      })
      -- disable logging 
      vim.lsp.set_log_level("off")

      --vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  },
}
