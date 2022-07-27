local g = vim.g
local o = vim.o

if g.neovide then
  g.neovide_refresh_rate = 144

  g.neovide_cursor_animation_length = 0.13
  g.neovide_cursor_trail_length = 0.3
  g.neovide_no_idle = true
  g.neovide_cursor_vfx_mode = 'pixiedust'
  g.neovide_scroll_animation_length = 0.3
  o.guifont = 'Iosevka Fixed, monospace:h15'
end
