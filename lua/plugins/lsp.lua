return {
  -- LSP Config
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
    },
    config = function()
      require("mason").setup()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "ts_ls",
          "vtsls",
          "html",
          "cssls",
          "jsonls",
          "bashls",
          "intelephense",     -- PHP LSP for Laravel
          "emmet_ls",         -- Optional: HTML class completion
          "tailwindcss",
        },
        automatic_installation = true,
      })

      local lspconfig = require("lspconfig")

      -- Common on_attach and capabilities (for cmp)
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      local on_attach = function(_, bufnr)
        local opts = { buffer = bufnr, silent = true }

        -- Keymaps
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
        vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
        vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
        vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
        vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
      end

      -- Setup LSPs
      local servers = {
        "lua_ls",
        "ts_ls",
        "vtsls",
        "html",
        "cssls",
        "jsonls",
        "bashls",
        "intelephense",
        "emmet_ls",
        "tailwindcss",
      }
      for _, server in ipairs(servers) do
        lspconfig[server].setup({
          on_attach = on_attach,
          capabilities = capabilities,
        })
      end

      lspconfig.emmet_ls.setup({
        on_attach = on_attach,
        capabilities = capabilities,
        filetypes = { "html", "blade", "php", "vue", "js" },
      })
    end,
  },
}

