vim.cmd("hi clear")
if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end
vim.o.background = "dark"
vim.g.colors_name = "eclipse"

local hl = vim.api.nvim_set_hl

-- Core editor UI
hl(0, "Normal",      { fg = "#aab0bd", bg = "#0b0d12" })
hl(0, "NormalFloat", { fg = "#aab0bd", bg = "#171a21" })
hl(0, "CursorLine",  { bg = "#171a21" })
hl(0, "CursorLineNr",{ fg = "#eef1f5", bold = true })
hl(0, "LineNr",      { fg = "#3d4453" })
hl(0, "Visual",      { bg = "#242835" })
hl(0, "Search",      { fg = "#0b0d12", bg = "#8fa0b8" })
hl(0, "IncSearch",   { fg = "#0b0d12", bg = "#eef1f5" })
hl(0, "StatusLine",  { fg = "#eef1f5", bg = "#242835" })
hl(0, "StatusLineNC",{ fg = "#3d4453", bg = "#171a21" })
hl(0, "VertSplit",   { fg = "#242835" })
hl(0, "Pmenu",       { fg = "#aab0bd", bg = "#171a21" })
hl(0, "PmenuSel",    { fg = "#eef1f5", bg = "#242835" })
hl(0, "SignColumn",  { bg = "#0b0d12" })

-- Syntax (cool, icy, low-saturation — echoes the wallpaper's frost tones)
hl(0, "Comment",   { fg = "#3d4453", italic = true })
hl(0, "Constant",  { fg = "#b8a98f" })  -- pale moonlit gold, very muted
hl(0, "String",    { fg = "#8fa895" })  -- frosted sage green
hl(0, "Identifier",{ fg = "#7a94b8" })  -- glacier blue
hl(0, "Function",  { fg = "#8fa0b8" })  -- accent blue
hl(0, "Statement", { fg = "#9089ab" })  -- muted twilight violet
hl(0, "Keyword",   { fg = "#9089ab" })
hl(0, "Type",      { fg = "#7ab0ac" })  -- pale ice teal
hl(0, "Special",   { fg = "#a3706e" })  -- muted ember red, very desaturated
hl(0, "PreProc",   { fg = "#b8898a" })

-- Diagnostics
hl(0, "DiagnosticError", { fg = "#a3706e" })
hl(0, "DiagnosticWarn",  { fg = "#b8a98f" })
hl(0, "DiagnosticInfo",  { fg = "#7a94b8" })
hl(0, "DiagnosticHint",  { fg = "#7ab0ac" })
