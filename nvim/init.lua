vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "
vim.g.background = "light"
vim.cmd("set number")
vim.cmd("set norelativenumber")

--vim.opt.number = true
--vim.opt.relativenumber = false
--vim.opt.signcolumn = "number"

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- In your init.lua
vim.diagnostic.config({
  virtual_text = false,
  virtual_lines = true,
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = false,
})


require("lazy").setup("plugins")
