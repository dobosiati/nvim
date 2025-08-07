return {
  {
    "kdheepak/lazygit.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    cmd = { "LazyGit" },
    keys = {
      { "<leader>gs", "<cmd>LazyGit<CR>", desc = "LazyGit" },
    },
  },
}

