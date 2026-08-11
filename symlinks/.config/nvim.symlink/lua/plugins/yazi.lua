return {
  -- yazi is the file explorer; disable LazyVim's default (neo-tree)
  { "nvim-neo-tree/neo-tree.nvim", enabled = false },

  {
    "mikavilpas/yazi.nvim",
    version = "*",
    event = "VeryLazy",
    dependencies = { { "nvim-lua/plenary.nvim", lazy = true } },
    keys = {
      { "<leader>e", "<cmd>Yazi<cr>", mode = { "n", "v" }, desc = "Yazi (current file)" },
      { "<leader>E", "<cmd>Yazi cwd<cr>", desc = "Yazi (cwd)" },
      { "<c-up>", "<cmd>Yazi toggle<cr>", desc = "Yazi (resume last session)" },
    },
    opts = {
      open_for_directories = true,
      keymaps = { show_help = "<f1>" },
    },
    init = function()
      -- netrw never loads; yazi handles `nvim <dir>` too
      vim.g.loaded_netrwPlugin = 1
    end,
  },
}
