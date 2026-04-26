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

Extras:

- `extras/ghostty/horoscope`: Ghostty theme file based on the same palette
- `extras/starship/horoscope.toml`: Starship prompt theme based on your current config layout
- `extras/tmux/horoscope.conf`: tmux theme snippet inspired by `catppuccin/tmux`

Ghostty:

```sh
theme = /absolute/path/to/horoscope/extras/ghostty/horoscope
```

tmux:

```tmux
source-file /absolute/path/to/horoscope/extras/tmux/horoscope.conf
```

Starship:

```sh
cp /absolute/path/to/horoscope/extras/starship/horoscope.toml ~/.config/starship.toml
```

Build:

```sh
shipwright shipwright_build.lua
```

After building, commit the updated `lua/horoscope/generated.lua` before pushing to GitHub.
