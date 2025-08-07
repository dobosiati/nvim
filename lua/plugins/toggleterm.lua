return {
    {
      "akinsho/toggleterm.nvim",
      version = "*",
      config = function()
        require("toggleterm").setup({
          size = 20,
          open_mapping = [[<c-\>]],  -- Ctrl + backslash to toggle terminal
          shading_factor = 2,
          direction = "float",       -- can be "horizontal", "vertical", or "float"
          float_opts = {
            border = "curved",
          },
        })
      end,
    }
}
