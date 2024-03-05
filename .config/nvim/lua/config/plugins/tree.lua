require("nvim-tree").setup({
   sort = {
      sorter = "case_sensitive",
   },
   view = {
      width = 30,
   },
   renderer = {
      group_empty = true,
   },
   filters = {
      dotfiles = false,
   },
})

vim.keymap.set("n", "<leader>t", ":NvimTreeToggle<cr>", { desc = "[T]ree view", silent = true })
