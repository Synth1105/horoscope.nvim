vim.cmd("highlight clear")

if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end

vim.o.termguicolors = true
vim.o.background = "dark"
vim.g.colors_name = "horoscope"

local colors = {
-- PATCH_OPEN
Normal = {fg = "#BFC3D4", bg = "#201F2E"},
Character = {fg = "#D48C68"},
Comment = {fg = "#92A59E"},
Delimiter = {fg = "#F193EE"},
DiagnosticError = {fg = "#F39BAE"},
DiagnosticHint = {fg = "#A3ACCC"},
DiagnosticInfo = {fg = "#80F7FF"},
DiagnosticOk = {fg = "#ACF6BE"},
DiagnosticWarn = {fg = "#F8E18B"},
Error = {fg = "#853A23"},
Exception = {fg = "#F08E89"},
Function = {fg = "#B28FD1"},
Identifier = {fg = "#4AB5A9"},
Ignore = {fg = "#A3A0B1"},
Keyword = {fg = "#ACB757"},
Operator = {fg = "#FD9BBA"},
Statement = {fg = "#96ACFD"},
String = {fg = "#CE955F"},
Todo = {fg = "#1F558E"},
Type = {fg = "#BC9BED"},
-- PATCH_CLOSE
}

for group, attrs in pairs(colors) do
  vim.api.nvim_set_hl(0, group, attrs)
end
