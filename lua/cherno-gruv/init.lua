-- cherno-gruv/init.lua (VIVID WARM EDITION)

local M = {}
local p = require("cherno-gruv.palette")

function M.setup()
  vim.cmd("highlight clear")
  vim.cmd("syntax reset")
  vim.o.background = "dark"
  vim.g.colors_name = "cherno-gruv"

  local set = vim.api.nvim_set_hl

  -- UI
  set(0, "Normal",       { bg = p.bg, fg = p.fg })
  set(0, "NormalFloat",  { bg = p.bg_alt, fg = p.fg })
  set(0, "CursorLine",   { bg = p.cursor_line })
  set(0, "Visual",       { bg = p.visual_bg })
  set(0, "LineNr",       { fg = p.gray })
  set(0, "CursorLineNr", { fg = p.yellow, bold = true })
  set(0, "VertSplit",    { fg = p.border })
  set(0, "StatusLine",   { bg = p.cursor_line, fg = p.fg })
  set(0, "StatusLineNC", { bg = p.cursor_line, fg = p.gray })
  set(0, "Pmenu",        { bg = p.popup_bg, fg = p.fg })
  set(0, "PmenuSel",     { bg = p.popup_sel, fg = p.yellow, bold = true })
  set(0, "Search",       { bg = p.orange, fg = p.bg, bold = true })
  set(0, "IncSearch",    { bg = p.yellow, fg = p.bg, bold = true })
  set(0, "MatchParen",   { bg = p.visual_bg, fg = p.red, bold = true })

  -- Syntax
  set(0, "Comment",      { fg = p.comment, italic = true })
  set(0, "Constant",     { fg = p.orange })       -- const/constexpr
  set(0, "String",       { fg = p.orange })       -- literals
  set(0, "Character",    { fg = p.orange })
  set(0, "Number",       { fg = p.green })
  set(0, "Boolean",      { fg = p.green })
  set(0, "Identifier",   { fg = p.fg })
  set(0, "Function",     { fg = p.yellow, bold = true })
  set(0, "Statement",    { fg = p.red, bold = true })   -- while, for, if, return
  set(0, "Keyword",      { fg = p.red })
  set(0, "Operator",     { fg = p.brown })
  set(0, "Type",         { fg = p.brown, bold = true }) -- class, struct
  set(0, "PreProc",      { fg = p.orange })
  set(0, "Special",      { fg = p.purple })             -- enum members
  set(0, "Delimiter",    { fg = p.gray })

  -- Treesitter
      -- === Treesitter semantic tokens ===
  set(0, "@type",                { fg = p.brown, bold = true })
  set(0, "@type.builtin",        { fg = p.orange, italic = true })
  set(0, "@function",            { fg = p.yellow, bold = true })
  set(0, "@function.call",       { fg = p.yellow })
  set(0, "@method",              { fg = p.yellow })
  set(0, "@method.call",         { fg = p.orange })      -- called member function
  set(0, "@property",            { fg = p.brown })       -- object.property
  set(0, "@field",               { fg = p.brown })       -- struct fields
  set(0, "@variable",            { fg = p.fg })
  set(0, "@variable.member",     { fg = p.orange })      -- ns.member
  set(0, "@variable.parameter",  { fg = p.green, italic = true }) -- function parameters
  set(0, "@variable.builtin",    { fg = p.orange, italic = true })
  set(0, "@variable.global",     { fg = p.red, bold = true })
  set(0, "@constant",            { fg = p.orange })
  set(0, "@constant.builtin",    { fg = p.orange, italic = true })
  set(0, "@enum",                { fg = p.purple, bold = true })
  set(0, "@enumMember",          { fg = p.purple })
  set(0, "@namespace",           { fg = p.purple, italic = true })
  set(0, "@keyword",             { fg = p.red, bold = true })
  set(0, "@operator",            { fg = p.brown })
  set(0, "@string",              { fg = p.orange })
  set(0, "@number",              { fg = p.green })
  set(0, "@boolean",             { fg = p.green })
  set(0, "@comment",             { fg = p.comment, italic = true })

  -- LSP semantic tokens
  set(0, "@lsp.type.member",       { fg = p.orange })
  set(0, "@lsp.type.method",       { fg = p.yellow })
  set(0, "@lsp.type.property",     { fg = p.brown })
  set(0, "@lsp.type.parameter",    { fg = p.green, italic = true })
  set(0, "@lsp.type.namespace",    { fg = p.purple })


  -- Telescope
  set(0, "TelescopeNormal",       { bg = p.bg_alt, fg = p.fg })
  set(0, "TelescopeBorder",       { fg = p.border })
  set(0, "TelescopePromptBorder", { fg = p.border })
  set(0, "TelescopePromptTitle",  { fg = p.yellow, bold = true })
  set(0, "TelescopeSelection",    { bg = p.visual_bg, fg = p.yellow })

  -- NeoTree
  set(0, "NeoTreeNormal",         { bg = p.bg, fg = p.fg })
  set(0, "NeoTreeDirectoryName",  { fg = p.brown })
  set(0, "NeoTreeRootName",       { fg = p.red, bold = true })
  set(0, "NeoTreeGitModified",    { fg = p.orange })
  set(0, "NeoTreeGitAdded",       { fg = p.green })
  set(0, "NeoTreeGitDeleted",     { fg = p.red })
  set(0, "NeoTreeGitConflict",    { fg = p.purple })

  -- Diagnostics
  set(0, "DiagnosticError",       { fg = p.red })
  set(0, "DiagnosticWarn",        { fg = p.orange })
  set(0, "DiagnosticInfo",        { fg = p.yellow })
  set(0, "DiagnosticHint",        { fg = p.purple })
end

return M

