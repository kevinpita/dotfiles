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
