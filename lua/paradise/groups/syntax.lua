-- Token colors follow the official VS Code port (paradise-theme/vscode):
-- variables and properties red, functions blue, keywords magenta, types and
-- constants yellow, strings green, operators and builtin functions cyan.
-- Treesitter captures and LSP token types not listed here fall back to their
-- parent capture or to Neovim's default link into the legacy groups.
local p = require("paradise.palette")

return {
  -- Legacy syntax
  Comment = { fg = p.muted },
  Constant = { fg = p.yellow },
  String = { fg = p.green },
  Character = { fg = p.green },
  Number = { fg = p.yellow },
  Boolean = { fg = p.yellow },
  Float = { fg = p.yellow },
  Identifier = { fg = p.red },
  Function = { fg = p.blue },
  Statement = { fg = p.magenta },
  Operator = { fg = p.cyan },
  PreProc = { fg = p.magenta },
  Macro = { fg = p.yellow },
  Type = { fg = p.yellow },
  StorageClass = { fg = p.magenta },
  Structure = { fg = p.magenta },
  Typedef = { fg = p.magenta },
  Special = { fg = p.cyan },
  Tag = { fg = p.red },
  Delimiter = { fg = p.fg },
  Debug = { fg = p.red },
  Underlined = { fg = p.blue, underline = true },
  Error = { fg = p.red },
  Todo = { fg = p.yellow, bold = true },

  -- Treesitter
  ["@variable"] = { fg = p.red },
  ["@variable.builtin"] = { fg = p.yellow },
  ["@variable.parameter"] = { fg = p.red },
  ["@variable.parameter.builtin"] = { fg = p.yellow },
  ["@variable.member"] = { fg = p.red },
  ["@property"] = { fg = p.red },
  ["@property.css"] = { fg = p.fg },
  ["@property.scss"] = { fg = p.fg },
  ["@constant"] = { fg = p.yellow },
  ["@constant.builtin"] = { fg = p.yellow },
  ["@module"] = { fg = p.yellow },
  ["@module.builtin"] = { fg = p.yellow },
  ["@label"] = { fg = p.fg },

  ["@string"] = { fg = p.green },
  ["@string.regexp"] = { fg = p.cyan },
  ["@string.escape"] = { fg = p.cyan },
  ["@string.special"] = { fg = p.cyan },
  ["@string.special.url"] = { fg = p.blue, underline = true },
  ["@character"] = { fg = p.green },
  ["@character.special"] = { fg = p.cyan },

  ["@type"] = { fg = p.yellow },
  ["@type.builtin"] = { fg = p.yellow },
  ["@attribute"] = { fg = p.yellow },
  ["@attribute.builtin"] = { fg = p.yellow },

  ["@function"] = { fg = p.blue },
  ["@function.builtin"] = { fg = p.cyan },
  ["@constructor"] = { fg = p.yellow },
  ["@constructor.lua"] = { fg = p.fg }, -- the braces of a table constructor
  ["@operator"] = { fg = p.cyan },
  ["@keyword"] = { fg = p.magenta },

  ["@punctuation"] = { fg = p.fg },
  ["@punctuation.special"] = { fg = p.magenta }, -- interpolation delimiters

  ["@tag"] = { fg = p.red },
  ["@tag.builtin"] = { fg = p.red },
  ["@tag.attribute"] = { fg = p.yellow },
  ["@tag.delimiter"] = { fg = p.fg },

  ["@markup.heading"] = { fg = p.red, bold = true },
  ["@markup.strong"] = { fg = p.yellow, bold = true },
  ["@markup.italic"] = { fg = p.magenta, italic = true },
  ["@markup.strikethrough"] = { strikethrough = true },
  ["@markup.underline"] = { underline = true },
  ["@markup.quote"] = { fg = p.blue },
  ["@markup.math"] = { fg = p.cyan },
  ["@markup.raw"] = { fg = p.green },
  ["@markup.list"] = { fg = p.yellow },
  ["@markup.list.checked"] = { fg = p.green },
  ["@markup.list.unchecked"] = { fg = p.muted },
  ["@markup.link"] = { fg = p.blue },
  ["@markup.link.url"] = { fg = p.magenta, underline = true },

  -- LSP semantic tokens. They outrank treesitter, so the generic `variable`
  -- and `comment` types are cleared to keep the more specific treesitter
  -- captures (builtins, constants, TODO keywords) visible underneath.
  ["@lsp.type.variable"] = {},
  ["@lsp.type.comment"] = {},
  ["@lsp.type.enumMember"] = { fg = p.cyan },
  ["@lsp.type.macro"] = { fg = p.yellow },
  ["@lsp.typemod.variable.constant"] = { fg = p.yellow },
  ["@lsp.typemod.variable.readonly"] = { fg = p.yellow },
  ["@lsp.typemod.variable.defaultLibrary"] = { fg = p.yellow },
  ["@lsp.mod.deprecated"] = { strikethrough = true },
}
