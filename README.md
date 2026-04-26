# horoscope

A Neovim colorscheme built from a Lush source, with a committed Lua colorscheme for end users.

Runtime:

- `colors/horoscope.lua` is the file that `lazy.nvim` users actually load.
- `colors/horoscope.vim` is a tiny shim so `:colorscheme horoscope` works reliably.
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

Build:

```sh
shipwright shipwright_build.lua
```

After building, commit the generated `colors/horoscope.lua` before pushing to GitHub.
