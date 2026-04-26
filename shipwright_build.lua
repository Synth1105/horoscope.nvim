package.path = table.concat({
  "./lua/?.lua",
  "./lua/?/init.lua",
  package.path,
}, ";")

local lushwright = require("shipwright.transform.lush")

run(
  require("lush_theme.horoscope"),
  lushwright.to_lua,
  { patchwrite, "colors/horoscope.lua", "-- PATCH_OPEN", "-- PATCH_CLOSE" }
)
