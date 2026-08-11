return {
  -- extra tools not covered by the language extras
  {
    "mason-org/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "shellcheck",
        "shfmt",
      })
    end,
  },

  -- lsp servers not covered by the language extras
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
      servers = {
        cssls = {},
        html = {},
      },
    },
  },
}
