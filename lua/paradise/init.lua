local M = {}

function M.load()
  if vim.g.colors_name then
    vim.cmd.highlight("clear")
  end
  vim.o.termguicolors = true
  vim.o.background = "dark"
  vim.g.colors_name = "paradise"

  for _, name in ipairs({ "editor", "syntax", "plugins" }) do
    for group, hl in pairs(require("paradise.groups." .. name)) do
      vim.api.nvim_set_hl(0, group, hl)
    end
  end

  local p = require("paradise.palette")
  local ansi = { p.bg, p.red, p.green, p.yellow, p.blue, p.magenta, p.cyan, p.fg }
  for i, color in ipairs(ansi) do
    vim.g["terminal_color_" .. (i - 1)] = color
    vim.g["terminal_color_" .. (i + 7)] = color -- Paradise has no separate bright colors...
  end
  vim.g.terminal_color_8 = p.gray -- ...except bright black
end

return M
