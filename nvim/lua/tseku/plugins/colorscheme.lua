return {
  'rose-pine/neovim',
  priority = 1000,
  config = function()
    require('rose-pine').setup({
      variant = 'main',
      disable_background = true,
      styles = {
        transparency = true,
      },
    })

    vim.cmd("colorscheme rose-pine")

  end
}
