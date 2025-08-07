return {
    {
      "akinsho/bufferline.nvim",
      dependencies = "nvim-tree/nvim-web-devicons",
      event = "BufReadPost",  -- lazy load on buffer read
      config = function()
        require("bufferline").setup({
          options = {
            diagnostics = "nvim_lsp",
            show_buffer_close_icons = true,
            show_close_icon = false,
            separator_style = "slant",
            -- Customize as you like
          },
        })
      end,
    }
}

