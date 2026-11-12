-- Paradise palette: https://github.com/paradise-theme/paradise
-- Base and accent colors come from the official terminal ports; the extra
-- surfaces come from the official VS Code port (paradise-theme/vscode).
return {
  bg = "#151515",
  bg_dark = "#121212", -- floats, popups, sidebars, statusline
  bg_line = "#1f1f1f", -- cursorline, selected list item
  bg_match = "#2e2e2e", -- matching bracket, secondary statusline blocks
  gray = "#424242", -- bright black: line numbers, borders
  muted = "#a39d9d", -- comments and secondary text; the port's #424242 is unreadable as text
  fg = "#e8e3e3",

  red = "#b66467",
  green = "#8c977d",
  yellow = "#d9bc8c",
  blue = "#8da3b9",
  magenta = "#a988b0",
  cyan = "#8aa6a2",

  -- Translucent VS Code colors flattened over `bg`; terminals have no alpha.
  bg_visual = "#343a46", -- editor.selectionBackground #67769660
  bg_word = "#383a40", -- editor.wordHighlightBackground #d2e0ff2f
  diff_add = "#2d2f2a", -- green at 20%
  diff_delete = "#352525", -- red at 20%
  diff_change = "#2d3136", -- blue at 20% (diffEditor.insertedTextBackground)
  diff_text = "#3f474e", -- blue at 35%
}
