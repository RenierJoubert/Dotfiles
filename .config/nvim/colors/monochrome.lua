-- ~/.config/nvim/colors/monotone.lua

vim.cmd("highlight clear")

if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end

vim.o.background = "dark"
vim.g.colors_name = "monotone"

local c = {
  -- Backgrounds
  bg        = "#09090a",
  bg_dark   = "#050506",
  bg_soft   = "#141415",
  bg_float  = "#111112",

  -- Foreground
  fg        = "#e8e8e6",
  fg_soft   = "#b0afa8",
  muted     = "#6b6a65",

  -- Accents
  primary   = "#e8e8e6",
  secondary = "#b0afa8",
  tertiary  = "#888784",

  -- Semantic (all mapped to grayscale)
  info      = "#b0afa8",
  hint      = "#888784",
  warn      = "#b0afa8",
  error     = "#e8e8e6",

  border    = "#888784",
  selection = "#1f1f20",
  line      = "#111112",
}

local function hl(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- Editor
hl("Normal",       { fg = c.fg, bg = c.bg })
hl("NormalNC",     { fg = c.fg_soft, bg = c.bg })
hl("NormalFloat",  { fg = c.fg, bg = c.bg_float })
hl("FloatBorder",  { fg = c.border, bg = c.bg_float })

hl("Cursor",       { fg = c.bg, bg = c.fg })
hl("CursorLine",   { bg = c.line })
hl("CursorColumn", { bg = c.line })
hl("ColorColumn",  { bg = c.bg_soft })

hl("LineNr",       { fg = c.muted })
hl("CursorLineNr", { fg = c.fg, bold = true })
hl("SignColumn",   { bg = c.bg })

hl("Visual",       { bg = c.selection })
hl("Search",       { fg = c.bg, bg = c.fg })
hl("IncSearch",    { fg = c.bg, bg = c.fg_soft })

hl("Pmenu",        { fg = c.fg, bg = c.bg_soft })
hl("PmenuSel",     { fg = c.bg, bg = c.tertiary })
hl("PmenuSbar",    { bg = c.bg_soft })
hl("PmenuThumb",   { bg = c.border })

hl("StatusLine",   { fg = c.fg, bg = c.bg_soft })
hl("StatusLineNC", { fg = c.muted, bg = c.bg_dark })
hl("WinSeparator", { fg = c.border })
hl("VertSplit",    { fg = c.border })

hl("TabLine",      { fg = c.muted, bg = c.bg_dark })
hl("TabLineSel",   { fg = c.fg, bg = c.bg_soft, bold = true })
hl("TabLineFill",  { bg = c.bg_dark })

-- Syntax
hl("Comment",      { fg = c.muted, italic = true })
hl("Constant",     { fg = c.fg_soft })
hl("String",       { fg = c.fg_soft })
hl("Character",    { fg = c.fg_soft })
hl("Number",       { fg = c.tertiary })
hl("Boolean",      { fg = c.tertiary })
hl("Float",        { fg = c.tertiary })

hl("Identifier",   { fg = c.fg })
hl("Function",     { fg = c.fg, bold = true })
hl("Statement",    { fg = c.fg_soft })
hl("Conditional",  { fg = c.fg_soft, italic = true })
hl("Repeat",       { fg = c.fg_soft, italic = true })
hl("Label",        { fg = c.fg_soft })
hl("Operator",     { fg = c.tertiary })
hl("Keyword",      { fg = c.fg_soft, italic = true })
hl("Exception",    { fg = c.fg, bold = true })

hl("PreProc",      { fg = c.tertiary })
hl("Include",      { fg = c.fg_soft })
hl("Define",       { fg = c.tertiary })
hl("Macro",        { fg = c.tertiary })

hl("Type",         { fg = c.fg_soft })
hl("StorageClass", { fg = c.fg_soft, italic = true })
hl("Structure",    { fg = c.fg_soft })
hl("Typedef",      { fg = c.fg_soft })

hl("Special",      { fg = c.tertiary })
hl("SpecialChar",  { fg = c.tertiary })
hl("Delimiter",    { fg = c.muted })
hl("Todo",         { fg = c.bg, bg = c.fg_soft, bold = true })

-- Diagnostics
hl("DiagnosticError", { fg = c.fg })
hl("DiagnosticWarn",  { fg = c.fg_soft })
hl("DiagnosticInfo",  { fg = c.tertiary })
hl("DiagnosticHint",  { fg = c.muted })

hl("DiagnosticUnderlineError", { undercurl = true, sp = c.fg })
hl("DiagnosticUnderlineWarn",  { undercurl = true, sp = c.fg_soft })
hl("DiagnosticUnderlineInfo",  { undercurl = true, sp = c.tertiary })
hl("DiagnosticUnderlineHint",  { undercurl = true, sp = c.muted })

-- Git signs
hl("GitSignsAdd",    { fg = c.fg_soft })
hl("GitSignsChange", { fg = c.tertiary })
hl("GitSignsDelete", { fg = c.fg, bold = true })

-- Treesitter
hl("@comment",             { fg = c.muted, italic = true })
hl("@string",              { fg = c.fg_soft })
hl("@number",              { fg = c.tertiary })
hl("@boolean",             { fg = c.tertiary })
hl("@function",            { fg = c.fg, bold = true })
hl("@function.call",       { fg = c.fg })
hl("@method",              { fg = c.fg })
hl("@keyword",             { fg = c.fg_soft, italic = true })
hl("@keyword.function",    { fg = c.fg_soft, italic = true })
hl("@operator",            { fg = c.tertiary })
hl("@type",                { fg = c.fg_soft })
hl("@type.builtin",        { fg = c.fg_soft, italic = true })
hl("@variable",            { fg = c.fg })
hl("@variable.builtin",    { fg = c.tertiary, italic = true })
hl("@property",            { fg = c.fg_soft })
hl("@field",               { fg = c.fg_soft })
hl("@constant",            { fg = c.fg_soft })
hl("@constant.builtin",    { fg = c.tertiary })
hl("@constructor",         { fg = c.fg_soft })
hl("@punctuation",         { fg = c.muted })
hl("@tag",                 { fg = c.fg_soft })
hl("@tag.attribute",       { fg = c.tertiary })
hl("@tag.delimiter",       { fg = c.muted })

-- Telescope
hl("TelescopeNormal",       { fg = c.fg, bg = c.bg_float })
hl("TelescopeBorder",       { fg = c.border, bg = c.bg_float })
hl("TelescopePromptNormal", { fg = c.fg, bg = c.bg_soft })
hl("TelescopePromptBorder", { fg = c.border, bg = c.bg_soft })
hl("TelescopeSelection",    { fg = c.fg, bg = c.selection, bold = true })
hl("TelescopeMatching",     { fg = c.fg, bold = true, underline = true })

-- NvimTree / Neo-tree
hl("NvimTreeNormal",            { fg = c.fg, bg = c.bg_dark })
hl("NvimTreeFolderName",        { fg = c.fg_soft })
hl("NvimTreeOpenedFolderName",  { fg = c.fg, bold = true })
hl("NvimTreeRootFolder",        { fg = c.fg, bold = true })
hl("NvimTreeGitDirty",          { fg = c.tertiary })
hl("NvimTreeGitNew",            { fg = c.fg_soft })
hl("NvimTreeGitDeleted",        { fg = c.fg, bold = true })

-- Which-key
hl("WhichKey",       { fg = c.fg_soft })
hl("WhichKeyGroup",  { fg = c.fg, bold = true })
hl("WhichKeyDesc",   { fg = c.fg })
hl("WhichKeyBorder", { fg = c.border })
