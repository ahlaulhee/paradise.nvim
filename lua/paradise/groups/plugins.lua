-- Only groups whose plugin default (usually a link into the editor groups)
-- does not already give the right result.
local p = require("paradise.palette")

local groups = {
  -- mini.statusline
  MiniStatuslineModeNormal = { fg = p.bg, bg = p.blue, bold = true },
  MiniStatuslineModeInsert = { fg = p.bg, bg = p.green, bold = true },
  MiniStatuslineModeVisual = { fg = p.bg, bg = p.magenta, bold = true },
  MiniStatuslineModeReplace = { fg = p.bg, bg = p.red, bold = true },
  MiniStatuslineModeCommand = { fg = p.bg, bg = p.yellow, bold = true },
  MiniStatuslineModeOther = { fg = p.bg, bg = p.cyan, bold = true },
  MiniStatuslineDevinfo = { fg = p.fg, bg = p.bg_match },
  MiniStatuslineFileinfo = { fg = p.fg, bg = p.bg_match },
  MiniStatuslineFilename = { fg = p.fg, bg = p.bg_dark },
  MiniStatuslineInactive = { fg = p.muted, bg = p.bg_dark },

  -- mini.pick
  MiniPickPrompt = { fg = p.fg, bg = p.bg_dark },
  MiniPickPromptCaret = { fg = p.blue, bg = p.bg_dark },
  MiniPickPromptPrefix = { fg = p.blue, bg = p.bg_dark },
  MiniPickMatchCurrent = { bg = p.bg_line, bold = true },
  MiniPickMatchMarked = { bg = p.bg_visual },
  MiniPickMatchRanges = { fg = p.blue, bold = true },
  MiniPickHeader = { fg = p.muted, bg = p.bg_dark },
  MiniPickBorderBusy = { fg = p.yellow, bg = p.bg_dark },

  -- mini.clue
  MiniClueDescGroup = { fg = p.blue, bg = p.bg_dark },
  MiniClueNextKey = { fg = p.yellow, bg = p.bg_dark, bold = true },
  MiniClueNextKeyWithPostkeys = { fg = p.red, bg = p.bg_dark, bold = true },
  MiniClueSeparator = { fg = p.gray, bg = p.bg_dark },

  -- mini.starter
  MiniStarterHeader = { fg = p.blue, bold = true },
  MiniStarterFooter = { fg = p.muted },
  MiniStarterSection = { fg = p.yellow, bold = true },
  MiniStarterItem = { fg = p.fg },
  MiniStarterItemBullet = { fg = p.gray },
  MiniStarterItemPrefix = { fg = p.red, bold = true },
  MiniStarterQuery = { fg = p.blue, bold = true },
  MiniStarterInactive = { fg = p.muted },

  -- mini.icons (the palette has one blue and no orange)
  MiniIconsAzure = { fg = p.blue },
  MiniIconsBlue = { fg = p.blue },
  MiniIconsCyan = { fg = p.cyan },
  MiniIconsGreen = { fg = p.green },
  MiniIconsGrey = { fg = p.muted },
  MiniIconsOrange = { fg = p.yellow },
  MiniIconsPurple = { fg = p.magenta },
  MiniIconsRed = { fg = p.red },
  MiniIconsYellow = { fg = p.yellow },

  -- gitsigns.nvim (signs link to Added/Changed/Removed by default)
  GitSignsAddInline = { bg = p.diff_add },
  GitSignsChangeInline = { bg = p.diff_text },
  GitSignsDeleteInline = { bg = p.diff_delete },

  -- neo-tree.nvim: a darker sidebar, like the VS Code port
  NeoTreeNormal = { fg = p.fg, bg = p.bg_dark },
  NeoTreeNormalNC = { fg = p.fg, bg = p.bg_dark },
  NeoTreeEndOfBuffer = { fg = p.bg_dark, bg = p.bg_dark },
  NeoTreeWinSeparator = { fg = p.bg_dark, bg = p.bg_dark },
  NeoTreeCursorLine = { bg = p.bg_line },
  NeoTreeRootName = { fg = p.fg, bold = true },
  NeoTreeDirectoryName = { fg = p.fg },
  NeoTreeDirectoryIcon = { fg = p.blue },
  NeoTreeFileNameOpened = { fg = p.fg, bold = true },
  NeoTreeSymbolicLinkTarget = { fg = p.cyan },
  NeoTreeIndentMarker = { fg = p.bg_match },
  NeoTreeExpander = { fg = p.gray },
  NeoTreeDimText = { fg = p.gray },
  NeoTreeDotfile = { fg = p.muted },
  NeoTreeMessage = { fg = p.muted },
  NeoTreeFilterTerm = { fg = p.green, bold = true },
  NeoTreeModified = { fg = p.yellow },
  NeoTreeGitAdded = { fg = p.green },
  NeoTreeGitModified = { fg = p.yellow },
  NeoTreeGitDeleted = { fg = p.red },
  NeoTreeGitConflict = { fg = p.red, bold = true },
  NeoTreeGitUnstaged = { fg = p.yellow },
  NeoTreeGitUntracked = { fg = p.green },
  NeoTreeFloatBorder = { link = "FloatBorder" },
  NeoTreeFloatTitle = { link = "FloatTitle" },
  NeoTreeTitleBar = { fg = p.bg, bg = p.blue, bold = true },
  NeoTreeTabActive = { fg = p.fg, bg = p.bg, bold = true },
  NeoTreeTabInactive = { fg = p.muted, bg = p.bg_dark },
  NeoTreeTabSeparatorActive = { fg = p.bg, bg = p.bg },
  NeoTreeTabSeparatorInactive = { fg = p.bg_dark, bg = p.bg_dark },
  NeoTreeFileStats = { fg = p.muted },
  NeoTreeFileStatsHeader = { fg = p.muted, bold = true },

  -- blink.cmp (menu, selection and scrollbar link to the Pmenu groups)
  BlinkCmpLabelMatch = { fg = p.blue, bold = true },
  BlinkCmpLabelDeprecated = { fg = p.gray, strikethrough = true },
  BlinkCmpMenuBorder = { link = "FloatBorder" },
  BlinkCmpDocBorder = { link = "FloatBorder" },
  BlinkCmpDocSeparator = { link = "FloatBorder" },
  BlinkCmpSignatureHelpBorder = { link = "FloatBorder" },
  BlinkCmpGhostText = { fg = p.gray },
  BlinkCmpKind = { fg = p.muted },

  -- codediff.nvim derives its line and character backgrounds from
  -- DiffAdd/DiffDelete/DiffChange; these are the hardcoded leftovers.
  CodeDiffFiller = { fg = p.bg_match },
  CodeDiffMoveFrom = { fg = p.blue },
  CodeDiffMoveTo = { fg = p.blue },

  -- lazy.nvim
  LazyH1 = { fg = p.bg, bg = p.blue, bold = true },
  LazyButton = { fg = p.fg, bg = p.bg_line },
  LazyButtonActive = { fg = p.fg, bg = p.gray, bold = true },
  LazyDimmed = { fg = p.muted },
  LazyProp = { fg = p.muted },
  LazySpecial = { fg = p.blue },
  LazyProgressDone = { fg = p.blue },
  LazyProgressTodo = { fg = p.bg_match },

  -- mason.nvim
  MasonHeader = { fg = p.bg, bg = p.yellow, bold = true },
  MasonHeaderSecondary = { fg = p.bg, bg = p.blue, bold = true },
  MasonHighlight = { fg = p.blue },
  MasonHighlightBlock = { fg = p.bg, bg = p.blue },
  MasonHighlightBlockBold = { fg = p.bg, bg = p.blue, bold = true },
  MasonHighlightSecondary = { fg = p.yellow },
  MasonHighlightBlockSecondary = { fg = p.bg, bg = p.yellow },
  MasonHighlightBlockBoldSecondary = { fg = p.bg, bg = p.yellow, bold = true },
  MasonMuted = { fg = p.muted },
  MasonMutedBlock = { fg = p.fg, bg = p.gray },
  MasonMutedBlockBold = { fg = p.fg, bg = p.gray, bold = true },
}

-- blink.cmp completion kinds, colored like the token they complete to.
local kinds = {
  [p.blue] = { "Function", "Method", "Reference", "Folder" },
  [p.red] = { "Variable", "Field", "Property", "Event" },
  [p.yellow] = {
    "Class",
    "Interface",
    "Struct",
    "Enum",
    "Module",
    "TypeParameter",
    "Constructor",
    "Constant",
    "Value",
    "Unit",
  },
  [p.magenta] = { "Keyword" },
  [p.cyan] = { "Operator", "EnumMember" },
  [p.green] = { "Text", "Snippet", "Color" },
  [p.fg] = { "File" },
}
for color, names in pairs(kinds) do
  for _, name in ipairs(names) do
    groups["BlinkCmpKind" .. name] = { fg = color }
  end
end

return groups
