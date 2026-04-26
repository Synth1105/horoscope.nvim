local c = require("horoscope.palette")

return {
  normal = {
    a = { bg = c.identifier, fg = c.bg, gui = "bold" },
    b = { bg = c.bg_status, fg = c.fg },
    c = { bg = c.bg_alt, fg = c.fg_alt },
  },
  insert = {
    a = { bg = c.string, fg = c.bg, gui = "bold" },
    b = { bg = c.bg_status, fg = c.fg },
    c = { bg = c.bg_alt, fg = c.fg_alt },
  },
  visual = {
    a = { bg = c.func, fg = c.bg, gui = "bold" },
    b = { bg = c.bg_status, fg = c.fg },
    c = { bg = c.bg_alt, fg = c.fg_alt },
  },
  replace = {
    a = { bg = c.operator, fg = c.bg, gui = "bold" },
    b = { bg = c.bg_status, fg = c.fg },
    c = { bg = c.bg_alt, fg = c.fg_alt },
  },
  command = {
    a = { bg = c.keyword, fg = c.bg, gui = "bold" },
    b = { bg = c.bg_status, fg = c.fg },
    c = { bg = c.bg_alt, fg = c.fg_alt },
  },
  inactive = {
    a = { bg = c.bg_alt, fg = c.fg_alt, gui = "bold" },
    b = { bg = c.bg_alt, fg = c.fg_alt },
    c = { bg = c.bg, fg = c.comment },
  },
}
