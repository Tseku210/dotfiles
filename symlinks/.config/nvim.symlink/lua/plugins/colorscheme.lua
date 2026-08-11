return {
  {
    "catppuccin/nvim",
    lazy = true,
    name = "catppuccin",
    opts = {
      flavour = "mocha",
      -- terminal: let Ghostty's background show through.
      -- Neovide: needs a real bg color for neovide_opacity to work.
      transparent_background = not vim.g.neovide,
    },
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
