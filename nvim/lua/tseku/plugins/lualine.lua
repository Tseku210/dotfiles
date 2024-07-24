return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require("rose-pine").setup()

      local theme = require("lualine.themes.rose-pine")
      local modes = { "normal", "insert", "visual", "replace", "command", "inactive" }
      for _, mode in ipairs(modes) do
        theme[mode].c.bg = "NONE"
      end

      require("lualine").setup({
        options = {
          theme = theme,
        },
      })
    end
}
