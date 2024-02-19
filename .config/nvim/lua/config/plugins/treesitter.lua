vim.defer_fn(function()
   require("nvim-treesitter.configs").setup({
      ensure_installed = {
         "arduino",
         "bash",
         "c",
         "cpp",
         "go",
         "gomod",
         "gosum",
         "json",
         "lua",
         "markdown",
         "python",
         "rust",
         "vimdoc",
         "vim",
         "yaml",
      },

      auto_install = true,
      sync_install = false,
      ignore_install = {},
   })
end, 0)
