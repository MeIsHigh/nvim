local p = require("cherno-gruv.palette")

return {
  normal = {
    a = { bg = p.yellow, fg = p.bg, gui = "bold" },
    b = { bg = p.cursor_line, fg = p.yellow },
    c = { bg = p.bg, fg = p.fg },
  },
  insert = {
    a = { bg = p.green, fg = p.bg, gui = "bold" },
    b = { bg = p.cursor_line, fg = p.fg },
    c = { bg = p.bg, fg = p.fg },
  },
  visual = {
    a = { bg = p.orange, fg = p.bg, gui = "bold" },
    b = { bg = p.cursor_line, fg = p.yellow },
    c = { bg = p.bg, fg = p.fg },
  },
  replace = {
    a = { bg = p.red, fg = p.bg, gui = "bold" },
    b = { bg = p.cursor_line, fg = p.yellow },
    c = { bg = p.bg, fg = p.fg },
  },
  command = {
    a = { bg = p.purple, fg = p.bg, gui = "bold" },
    b = { bg = p.cursor_line, fg = p.yellow },
    c = { bg = p.bg, fg = p.fg },
  },
  inactive = {
    a = { bg = p.bg, fg = p.gray },
    b = { bg = p.bg, fg = p.gray },
    c = { bg = p.bg, fg = p.gray },
  },
}

