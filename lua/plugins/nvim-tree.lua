return {
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("nvim-tree").setup({
      update_focused_file = {
        enable = true,       -- auto focus current file
        update_cwd = true,   -- change nvim-tree root dir to file's dir
      },
      view = {
        width = 30,
      },
      renderer = {
        highlight_opened_files = "name",
      },
    })
    end,
  },
}
