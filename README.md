# pywal-lush

Dynamic Neovim theme that uses colors generated from
[pywal](https://github.com/dylanaraps/pywal).

Made with [Lush](https://github.com/rktjmp/lush.nvim/tree/main).

Initial implementation based on
[Deep-Six/pywal-lush](https://github.com/Deep-Six/pywal-lush).

## Installation

Using `lazy.nvim`:

```lua
{
  "impankratov/pywal-lush",
  dependencies = { "rktjmp/lush.nvim", }
}
```

Apply via `init.lua`:

```lua
vim.o.termguicolors = true
vim.cmd.colorscheme('pywal-lush')
```

## Plugin support

- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [nvim-treesitter-context](https://github.com/nvim-treesitter/nvim-treesitter-context)
