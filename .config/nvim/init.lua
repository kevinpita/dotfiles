vim.g.mapleader = " "
vim.g.maplocalleader = " "

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

require("lazy").setup("plugins")

vim.g.editorconfig = true

vim.o.hlsearch = true
vim.o.mouse = "a"
vim.o.clipboard = "unnamedplus"
vim.o.undofile = true
vim.o.termguicolors = true

-- Case insensitive unless \C or caps are used.
vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.updatetime = 250
vim.o.timeoutlen = 300

-- Always show the completion menu, even if there's only one match.
-- No completion is selected by default.
vim.o.completeopt = "menuone,noselect"

vim.wo.number = true
vim.wo.wrap = false
vim.wo.signcolumn = "yes"

vim.keymap.set("n", "<leader>?", require("telescope.builtin").oldfiles, { desc = "[?] Find recently opened files" })
