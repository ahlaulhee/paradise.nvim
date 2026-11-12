# paradise.nvim

The [Paradise](https://github.com/paradise-theme/paradise) color scheme for Neovim. Dark only, no
configuration.

Token colors follow the official [VS Code port](https://github.com/paradise-theme/vscode), with one
deliberate difference: comments use `#a39d9d` instead of `#424242`, which is close to invisible on
the `#151515` background.

## Install

With [lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
{
  "ahlaulhee/paradise.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("paradise")
  end,
}
```

Requires Neovim 0.10 or newer and a terminal with true color support.

## Coverage

- Editor UI, legacy syntax groups, treesitter captures, LSP semantic tokens, diagnostics, diff and
  `:terminal` colors.
- Plugins: [mini.nvim](https://github.com/nvim-mini/mini.nvim) (statusline, pick, clue, starter,
  icons), [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim),
  [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim),
  [blink.cmp](https://github.com/Saghen/blink.cmp),
  [codediff.nvim](https://github.com/esmuellert/codediff.nvim),
  [lazy.nvim](https://github.com/folke/lazy.nvim) and
  [mason.nvim](https://github.com/mason-org/mason.nvim).

## Palette

The colors are available to your own config:

```lua
local p = require("paradise.palette")
vim.api.nvim_set_hl(0, "MyGroup", { fg = p.blue, bg = p.bg_dark })
```

## Credits

Palette and token mapping by the [Paradise theme](https://github.com/paradise-theme) authors (MIT).
