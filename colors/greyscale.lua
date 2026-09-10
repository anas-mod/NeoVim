-- Reset any existing highlights first
vim.cmd("hi clear")
if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end
vim.o.background = "dark"
vim.g.colors_name = "greyscale"

local hl = vim.api.nvim_set_hl

-- Core editor UI
hl(0, "Normal",      { fg = "#b0b0b0", bg = "#1c1c1c" })
hl(0, "NormalFloat", { fg = "#b0b0b0", bg = "#262626" })
hl(0, "CursorLine",  { bg = "#262626" })
hl(0, "CursorLineNr",{ fg = "#eeeeee", bold = true })
hl(0, "LineNr",      { fg = "#6c6c6c" })
hl(0, "Visual",      { bg = "#3a3a3a" })
hl(0, "Search",      { fg = "#1c1c1c", bg = "#8a8a8a" })
hl(0, "IncSearch",   { fg = "#1c1c1c", bg = "#eeeeee" })
hl(0, "StatusLine",  { fg = "#eeeeee", bg = "#3a3a3a" })
hl(0, "StatusLineNC",{ fg = "#6c6c6c", bg = "#262626" })
hl(0, "VertSplit",   { fg = "#3a3a3a" })
hl(0, "Pmenu",       { fg = "#b0b0b0", bg = "#262626" })
hl(0, "PmenuSel",    { fg = "#eeeeee", bg = "#3a3a3a" })
hl(0, "SignColumn",  { bg = "#1c1c1c" })

-- Syntax highlighting (muted, matches st's ANSI palette)
hl(0, "Comment",   { fg = "#6c6c6c", italic = true })
hl(0, "Constant",  { fg = "#b5a17a" })  -- muted yellow
hl(0, "String",    { fg = "#8a9a7b" })  -- muted green
hl(0, "Identifier",{ fg = "#7a8fa3" })  -- muted blue
hl(0, "Function",  { fg = "#94aac0" })  -- bright muted blue
hl(0, "Statement", { fg = "#9a8aa3" })  -- muted magenta
hl(0, "Keyword",   { fg = "#9a8aa3" })
hl(0, "Type",      { fg = "#7aa3a1" })  -- muted cyan
hl(0, "Special",   { fg = "#a35c5c" })  -- muted red
hl(0, "PreProc",   { fg = "#c47a7a" })

-- Diagnostics (from your LSP setup)
hl(0, "DiagnosticError", { fg = "#a35c5c" })
hl(0, "DiagnosticWarn",  { fg = "#b5a17a" })
hl(0, "DiagnosticInfo",  { fg = "#7a8fa3" })
hl(0, "DiagnosticHint",  { fg = "#7aa3a1" })
