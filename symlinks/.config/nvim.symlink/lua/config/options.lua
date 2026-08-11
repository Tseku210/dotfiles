-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Only options that differ from LazyVim defaults live here.

vim.opt.guicursor = "" -- block cursor everywhere
vim.opt.scrolloff = 10 -- more context than LazyVim's 4
vim.opt.wrap = true -- LazyVim disables wrap; linebreak is already on
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- Neovide (GUI) tweaks: match the Ghostty look
if vim.g.neovide then
  vim.o.guifont = "JetBrainsMono Nerd Font:h14"
  vim.g.neovide_remember_window_size = true
  -- translucent window with macOS blur behind it
  vim.g.neovide_opacity = 0.85
  vim.g.neovide_window_blurred = true
  -- no cursor smear / animated scrolling
  vim.g.neovide_cursor_animation_length = 0
  vim.g.neovide_cursor_trail_size = 0
  vim.g.neovide_scroll_animation_length = 0
  vim.g.neovide_position_animation_length = 0
end

-- Python: pyright + ruff (the python extra reads these)
vim.g.lazyvim_python_lsp = "pyright"
vim.g.lazyvim_python_ruff = "ruff"
