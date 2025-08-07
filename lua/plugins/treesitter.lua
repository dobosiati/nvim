return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
        highlight = { enable = true },
        indent = { enable = true },
        ensure_installed = { "lua", "python", "javascript", "html", "css", "php", "html", "blade" }, -- Add what you use
      })
    end,
  },
}
