local p = require("daibanana").palette

return {
  normal = {
    a = { fg = p.bg, bg = p.red, gui = "bold" },
    b = { fg = p.fg, bg = p.surface },
    c = { fg = p.fg_soft, bg = p.bg_alt },
  },

  insert = {
    a = { fg = p.bg, bg = p.gold, gui = "bold" },
    b = { fg = p.fg, bg = p.surface },
    c = { fg = p.fg_soft, bg = p.bg_alt },
  },

  visual = {
    a = { fg = p.bg, bg = p.magenta, gui = "bold" },
    b = { fg = p.fg, bg = p.surface },
    c = { fg = p.fg_soft, bg = p.bg_alt },
  },

  replace = {
    a = { fg = p.bg, bg = p.error, gui = "bold" },
    b = { fg = p.fg, bg = p.surface },
    c = { fg = p.fg_soft, bg = p.bg_alt },
  },

  command = {
    a = { fg = p.bg, bg = p.blue, gui = "bold" },
    b = { fg = p.fg, bg = p.surface },
    c = { fg = p.fg_soft, bg = p.bg_alt },
  },

  terminal = {
    a = { fg = p.bg, bg = p.cyan, gui = "bold" },
    b = { fg = p.fg, bg = p.surface },
    c = { fg = p.fg_soft, bg = p.bg_alt },
  },

  inactive = {
    a = { fg = p.comment, bg = p.bg_alt, gui = "bold" },
    b = { fg = p.comment, bg = p.bg_alt },
    c = { fg = p.comment, bg = p.bg },
  },
}
