# horoscope

A Neovim colorscheme built from a Lush source, with a committed Lua colorscheme for end users.

Runtime:

- `colors/horoscope.lua` is the file that `lazy.nvim` users actually load.
- `colors/horoscope.vim` is a tiny shim so `:colorscheme horoscope` works reliably.
- `lua/horoscope/palette.lua` is the shared palette used by the colorscheme and plugin integrations.
- `lua/horoscope/generated.lua` is the Shipwright-generated base highlight table.
- End users do not need `lush.nvim` or `shipwright`.

Requirements:

- For users: none beyond Neovim with Lua colorscheme support.
- For maintainers: `lush.nvim` and `shipwright.nvim` or `shipwright`.

lazy.nvim:

```lua
{
  "YOUR_NAME/horoscope",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("horoscope")
    -- or: require("horoscope").load()
  end,
}
```

Plugin support:

- `lualine.nvim`: `options.theme = "horoscope"`
- `which-key.nvim`: highlight groups are included in the colorscheme
- `neo-tree.nvim`: highlight groups are included in the colorscheme

Build:

```sh
shipwright shipwright_build.lua
```

After building, commit the updated `lua/horoscope/generated.lua` before pushing to GitHub.
