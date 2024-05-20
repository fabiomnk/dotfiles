return {
  "iamcco/markdown-preview.nvim",
  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  ft = { "markdown" },

  build = function() vim.fn["mkdp#util#install"]() end,
  config = function()
    vim.keymap.set("n","<leader>mp", ":MarkdownPreview<CR>", {})
    vim.keymap.set("n","<leader>mpt", ":MarkdownPreviewToggle<CR>", {})
    vim.keymap.set("n","<leader>mps", ":MarkdownPreviewStop<CR>", {})
  end
}
