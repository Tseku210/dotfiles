return {
  "sindrets/diffview.nvim",
  cmd = { "DiffviewOpen", "DiffviewFileHistory" },
  keys = {
    { "<leader>gd", "<cmd>DiffviewOpen<cr>", desc = "Diff working tree (Diffview)" },
    { "<leader>gD", "<cmd>DiffviewFileHistory %<cr>", desc = "File history (Diffview)" },
  },
}
