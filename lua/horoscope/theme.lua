local palette = require("horoscope.palette")
local generated = require("horoscope.generated")

local M = {}

function M.groups()
  local c = palette
  local groups = vim.tbl_extend("force", generated, {
    Normal = { bg = c.bg, fg = c.fg },
    NormalFloat = { bg = c.bg_float, fg = c.fg },
    FloatBorder = { bg = c.bg_float, fg = c.border },
    FloatTitle = { bg = c.bg_float, fg = c.func, bold = true },
    SignColumn = { bg = c.bg, fg = c.fg_alt },
    LineNr = { bg = c.bg, fg = c.border },
    CursorLine = { bg = c.bg_alt },
    CursorLineNr = { bg = c.bg_alt, fg = c.keyword, bold = true },
    CursorColumn = { bg = c.bg_alt },
    Visual = { bg = c.bg_visual },
    Search = { bg = c.keyword, fg = c.bg },
    CurSearch = { bg = c.operator, fg = c.bg, bold = true },
    IncSearch = { bg = c.operator, fg = c.bg, bold = true },
    StatusLine = { bg = c.bg_status, fg = c.fg },
    StatusLineNC = { bg = c.bg_alt, fg = c.fg_alt },
    VertSplit = { bg = c.bg, fg = c.border },
    WinSeparator = { bg = c.bg, fg = c.border },
    EndOfBuffer = { bg = c.bg, fg = c.bg },
    Pmenu = { bg = c.bg_popup, fg = c.fg },
    PmenuSel = { bg = c.bg_visual, fg = c.fg, bold = true },
    PmenuSbar = { bg = c.bg_alt },
    PmenuThumb = { bg = c.border },
    Comment = { fg = c.comment, italic = true },
    String = { fg = c.string },
    Character = { fg = c.character },
    Identifier = { fg = c.identifier },
    Function = { fg = c.func },
    Statement = { fg = c.statement },
    Operator = { fg = c.operator },
    Keyword = { fg = c.keyword },
    Exception = { fg = c.exception },
    Type = { fg = c.type },
    Delimiter = { fg = c.delimiter },
    Ignore = { fg = c.muted },
    Error = { fg = c.error, bold = true },
    Todo = { bg = c.todo, fg = c.fg, bold = true },
    DiagnosticError = { fg = c.diag_error },
    DiagnosticWarn = { fg = c.diag_warn },
    DiagnosticInfo = { fg = c.diag_info },
    DiagnosticHint = { fg = c.diag_hint },
    DiagnosticOk = { fg = c.diag_ok },

    WhichKey = { fg = c.func, bold = true },
    WhichKeyGroup = { fg = c.identifier },
    WhichKeyDesc = { fg = c.statement },
    WhichKeySeparator = { fg = c.border },
    WhichKeyValue = { fg = c.fg_alt },
    WhichKeyFloat = { bg = c.bg_float },
    WhichKeyBorder = { bg = c.bg_float, fg = c.border },
    WhichKeyTitle = { bg = c.bg_float, fg = c.keyword, bold = true },
    WhichKeyNormal = { bg = c.bg_float, fg = c.fg },

    NeoTreeNormal = { bg = c.bg_alt, fg = c.fg },
    NeoTreeNormalNC = { bg = c.bg_alt, fg = c.fg_alt },
    NeoTreeFloatNormal = { bg = c.bg_float, fg = c.fg },
    NeoTreeFloatBorder = { bg = c.bg_float, fg = c.border },
    NeoTreeFloatTitle = { bg = c.bg_float, fg = c.func, bold = true },
    NeoTreeTitleBar = { bg = c.func, fg = c.bg, bold = true },
    NeoTreeWinSeparator = { bg = c.bg_alt, fg = c.border },
    NeoTreeVertSplit = { bg = c.bg_alt, fg = c.border },
    NeoTreeEndOfBuffer = { bg = c.bg_alt, fg = c.bg_alt },
    NeoTreeCursorLine = { bg = c.bg_visual },
    NeoTreeDirectoryName = { fg = c.statement },
    NeoTreeDirectoryIcon = { fg = c.func },
    NeoTreeFileName = { fg = c.fg },
    NeoTreeFileNameOpened = { fg = c.identifier, bold = true },
    NeoTreeRootName = { fg = c.keyword, bold = true },
    NeoTreeIndentMarker = { fg = c.border },
    NeoTreeExpander = { fg = c.muted },
    NeoTreeDimText = { fg = c.fg_alt },
    NeoTreeDotfile = { fg = c.comment },
    NeoTreeHiddenByName = { fg = c.comment, italic = true },
    NeoTreeMessage = { fg = c.fg_alt, italic = true },
    NeoTreeModified = { fg = c.diag_warn },
    NeoTreeGitAdded = { fg = c.diag_ok },
    NeoTreeGitModified = { fg = c.diag_warn },
    NeoTreeGitDeleted = { fg = c.diag_error },
    NeoTreeGitConflict = { fg = c.exception, bold = true },
    NeoTreeGitIgnored = { fg = c.comment },
    NeoTreeGitUntracked = { fg = c.diag_info },
    NeoTreeGitUnstaged = { fg = c.diag_warn },
    NeoTreeGitStaged = { fg = c.diag_ok },
  })

  return groups
end

function M.load()
  vim.cmd("highlight clear")

  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end

  vim.o.background = "dark"
  vim.g.colors_name = "horoscope"

  for group, attrs in pairs(M.groups()) do
    vim.api.nvim_set_hl(0, group, attrs)
  end
end

return M
