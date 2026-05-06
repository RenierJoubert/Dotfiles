-- ~/.config/nvim/colors/snowblue.lua

vim.cmd("highlight clear")

if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end

vim.o.background = "dark"
vim.g.colors_name = "snowblue"

local c = {
  -- Backgrounds 
  bg        = "#122349",
  bg_dark   = "#0d1b3a",
  bg_soft   = "#284783",
  bg_float  = "#1a2f5a",

  -- Foreground
  fg        = "#d6e4ff", 
  fg_soft   = "#9fb7e0",
  muted     = "#6b86b5",

  -- Accents
  primary   = "#6B9ADE",
  secondary = "#5682C6",
  tertiary  = "#446BB1",

  -- Semantic
  info      = "#6794DA",
  hint      = "#4A75BA",
  warn      = "#4871B5",
  error     = "#3A5FA1",

  border    = "#325696",
  selection = "#284783",
  line      = "#1a2f5a",
}

local function hl(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- Editor
hl("Normal",       { fg = c.fg, bg = c.bg })
hl("NormalNC",     { fg = c.fg_soft, bg = c.bg })
hl("NormalFloat",  { fg = c.fg, bg = c.bg_float })
hl("FloatBorder",  { fg = c.border, bg = c.bg_float })

hl("Cursor",       { fg = c.bg, bg = c.ice })
hl("CursorLine",   { bg = c.line })
hl("CursorColumn", { bg = c.line })
hl("ColorColumn",  { bg = c.bg_soft })

hl("LineNr",       { fg = c.muted })
hl("CursorLineNr", { fg = c.ice, bold = true })
hl("SignColumn",   { bg = c.bg })

hl("Visual",       { bg = c.selection })
hl("Search",       { fg = c.bg_dark, bg = c.ice })
hl("IncSearch",    { fg = c.bg_dark, bg = c.orange })

hl("Pmenu",        { fg = c.fg, bg = c.bg_soft })
hl("PmenuSel",     { fg = c.bg_dark, bg = c.ice })
hl("PmenuSbar",    { bg = c.bg_soft })
hl("PmenuThumb",   { bg = c.border })

hl("StatusLine",   { fg = c.fg, bg = c.bg_soft })
hl("StatusLineNC", { fg = c.muted, bg = c.bg_dark })
hl("WinSeparator", { fg = c.border })
hl("VertSplit",    { fg = c.border })

hl("TabLine",      { fg = c.muted, bg = c.bg_dark })
hl("TabLineSel",   { fg = c.ice, bg = c.bg_soft, bold = true })
hl("TabLineFill",  { bg = c.bg_dark })

-- Syntax
hl("Comment",      { fg = c.muted, italic = true })
hl("Constant",     { fg = c.ice })
hl("String",       { fg = c.cyan })
hl("Character",    { fg = c.cyan })
hl("Number",       { fg = c.violet })
hl("Boolean",      { fg = c.violet })
hl("Float",        { fg = c.violet })

hl("Identifier",   { fg = c.fg })
hl("Function",     { fg = c.blue })
hl("Statement",    { fg = c.ice })
hl("Conditional",  { fg = c.ice })
hl("Repeat",       { fg = c.ice })
hl("Label",        { fg = c.blue })
hl("Operator",     { fg = c.fg_soft })
hl("Keyword",      { fg = c.ice, italic = true })
hl("Exception",    { fg = c.red })

hl("PreProc",      { fg = c.violet })
hl("Include",      { fg = c.blue })
hl("Define",       { fg = c.violet })
hl("Macro",        { fg = c.violet })

hl("Type",         { fg = c.cyan })
hl("StorageClass", { fg = c.ice })
hl("Structure",    { fg = c.cyan })
hl("Typedef",      { fg = c.cyan })

hl("Special",      { fg = c.orange })
hl("SpecialChar",  { fg = c.orange })
hl("Delimiter",    { fg = c.fg_soft })
hl("Todo",         { fg = c.bg_dark, bg = c.yellow, bold = true })

-- Diagnostics
hl("DiagnosticError", { fg = c.red })
hl("DiagnosticWarn",  { fg = c.orange })
hl("DiagnosticInfo",  { fg = c.blue })
hl("DiagnosticHint",  { fg = c.cyan })

hl("DiagnosticUnderlineError", { undercurl = true, sp = c.red })
hl("DiagnosticUnderlineWarn",  { undercurl = true, sp = c.orange })
hl("DiagnosticUnderlineInfo",  { undercurl = true, sp = c.blue })
hl("DiagnosticUnderlineHint",  { undercurl = true, sp = c.cyan })

-- Git signs: blue/orange/red instead of green
hl("GitSignsAdd",    { fg = c.blue })
hl("GitSignsChange", { fg = c.orange })
hl("GitSignsDelete", { fg = c.red })

-- Treesitter
hl("@comment",        { fg = c.muted, italic = true })
hl("@string",         { fg = c.cyan })
hl("@number",         { fg = c.violet })
hl("@boolean",        { fg = c.violet })
hl("@function",       { fg = c.blue })
hl("@function.call",  { fg = c.blue })
hl("@method",         { fg = c.blue })
hl("@keyword",        { fg = c.ice, italic = true })
hl("@keyword.function",{ fg = c.ice, italic = true })
hl("@operator",       { fg = c.fg_soft })
hl("@type",           { fg = c.cyan })
hl("@type.builtin",   { fg = c.cyan, italic = true })
hl("@variable",       { fg = c.fg })
hl("@variable.builtin",{ fg = c.violet, italic = true })
hl("@property",       { fg = c.ice })
hl("@field",          { fg = c.ice })
hl("@constant",       { fg = c.ice })
hl("@constant.builtin",{ fg = c.violet })
hl("@constructor",    { fg = c.cyan })
hl("@punctuation",    { fg = c.fg_soft })
hl("@tag",            { fg = c.blue })
hl("@tag.attribute",  { fg = c.ice })
hl("@tag.delimiter",  { fg = c.fg_soft })

-- Telescope
hl("TelescopeNormal",       { fg = c.fg, bg = c.bg_float })
hl("TelescopeBorder",       { fg = c.border, bg = c.bg_float })
hl("TelescopePromptNormal", { fg = c.fg, bg = c.bg_soft })
hl("TelescopePromptBorder", { fg = c.border, bg = c.bg_soft })
hl("TelescopeSelection",    { fg = c.ice, bg = c.selection, bold = true })
hl("TelescopeMatching",     { fg = c.orange, bold = true })

-- NvimTree / Neo-tree
hl("NvimTreeNormal",       { fg = c.fg, bg = c.bg_dark })
hl("NvimTreeFolderName",   { fg = c.blue })
hl("NvimTreeOpenedFolderName", { fg = c.ice, bold = true })
hl("NvimTreeRootFolder",   { fg = c.ice, bold = true })
hl("NvimTreeGitDirty",     { fg = c.orange })
hl("NvimTreeGitNew",       { fg = c.blue })
hl("NvimTreeGitDeleted",   { fg = c.red })

-- Which-key
hl("WhichKey",       { fg = c.blue })
hl("WhichKeyGroup",  { fg = c.ice })
hl("WhichKeyDesc",   { fg = c.fg })
hl("WhichKeyBorder", { fg = c.border })
