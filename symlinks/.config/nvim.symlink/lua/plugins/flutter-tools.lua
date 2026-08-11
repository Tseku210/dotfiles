return {
  "nvim-flutter/flutter-tools.nvim",
  ft = "dart", -- only load when editing Dart, never at startup
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {
    flutter_path = "/opt/homebrew/bin/flutter",
    widget_guides = { enabled = true },
    debugger = {
      enabled = true,
      register_configurations = function(_)
        require("dap").configurations.dart = {}
        require("dap.ext.vscode").load_launchjs()
      end,
    },
  },
}
