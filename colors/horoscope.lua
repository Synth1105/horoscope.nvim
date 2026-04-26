vim.cmd("highlight clear")

if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end

vim.o.background = "dark"
vim.g.colors_name = "horoscope"

local colors = {
  -- PATCH_OPEN
  Normal = { bg = "#21202f", fg = "#bec2d4" },
  Comment = { fg = "#93a79f" },
  String = { fg = "#ce935d" },
  Character = { fg = "#d58e69" },
  Identifier = { fg = "#4bb6a8" },
  Function = { fg = "#b391d2" },
  Statement = { fg = "#96acfe" },
  Operator = { fg = "#fd9cba" },
  Keyword = { fg = "#acb759" },
  Exception = { fg = "#f08e89" },
  Type = { fg = "#bc9bed" },
  Delimiter = { fg = "#f193ee" },
  Ignore = { fg = "#a29fb0" },
  Error = { fg = "#833923" },
  Todo = { fg = "#1f548c" },
  DiagnosticError = { fg = "#f39aad" },
  DiagnosticWarn = { fg = "#f8e18a" },
  DiagnosticInfo = { fg = "#7ff6ff" },
  DiagnosticHint = { fg = "#a4adcd" },
  DiagnosticOk = { fg = "#aaf5bc" },
  -- PATCH_CLOSE
}

for group, attrs in pairs(colors) do
  vim.api.nvim_set_hl(0, group, attrs)
end
