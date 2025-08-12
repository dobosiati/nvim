return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    config = function()
      -- Detect GNOME color-scheme
      local handle = io.popen("gsettings get org.gnome.desktop.interface color-scheme")
      local result = handle:read("*a") or ""
      handle:close()

      -- Trim whitespace
      result = result:gsub("%s+", "")

      -- Choose theme flavor
      local flavor = "mocha" -- default dark
      if result == "'default'" then
        flavor = "latte" -- light mode
      elseif result == "'prefer-dark'" then
        flavor = "mocha" -- dark mode
      end

      require("catppuccin").setup({
        flavour = flavor,
        integrations = {
          telescope = true,
          treesitter = true,
          lsp_saga = true,
          native_lsp = {
            enabled = true,
            virtual_text = { errors = { "italic" }, hints = { "italic" } },
          },
        },
      })

      vim.cmd.colorscheme("catppuccin")
    end,
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("lualine").setup()
    end,
  },
}
