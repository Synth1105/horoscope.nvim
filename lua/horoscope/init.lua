local M = {}

M.palette = require("horoscope.palette")

function M.load()
  vim.cmd.colorscheme("horoscope")
end

return M
