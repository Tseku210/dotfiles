return {
  "nvim-flutter/flutter-tools.nvim",
  lazy = false,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "stevearc/dressing.nvim", -- optional for vim.ui.select
  },
  config = function()
    require("flutter-tools").setup({
      flutter_path = "/opt/homebrew/bin/flutter",
      flutter_lookup_cmd = nil,
      fvm = false,
      widget_guides = { enabled = true },
      debugger = {
        enabled = true,
        register_configurations = function(_)
          require("dap").configurations.dart = {}
          require("dap.ext.vscode").load_launchjs()
        end,
      },
    })
  end,
}
