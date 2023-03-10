local wezterm = require 'wezterm'

return {
  default_prog = { 'fish' },
  font = wezterm.font 'CozetteVector Nerd Font',
  hide_tab_bar_if_only_one_tab = true,
  font_size = 12.0,
  colors = {
    -- The default text color
    foreground = '#d3c6aa',
    -- The default background color
    background = '#2d353b',

    ansi = {
      '#4f585e',
      '#e67e80',
      '#a7c080',
      '#dbbc7f',
      '#7fbbb3',
      '#d699b6',
      '#83c092',
      '#9da9a0',
    },
    brights = {
      '#4f585e',
      '#e67e80',
      '#a7c080',
      '#dbbc7f',
      '#7fbbb3',
      '#d699b6',
      '#83c092',
      '#9da9a0',
    },
  }
}
