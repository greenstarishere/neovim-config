---@type ChadrcConfig
local M = {}

local logo =
[[
    ______              __                       
   /_  __/_______  ____/ /___  __  ______  ____ _
    / / / ___/ _ \/ __  / __ \/ / / / __ \/ __ `/
   / / / /  /  __/ /_/ / /_/ / /_/ / / / / /_/ / 
  /_/ /_/   \___/\__,_/\____/\__,_/_/ /_/\__,_/  
]]

M.ui = {
  theme = 'everforest',
  nvdash = {
    load_on_startup = true,

    header = vim.split(logo, "\n", { trimempty = true}),

    buttons = {
      { "  Find File", "Spc f f", "Telescope find_files" },
      { "󰈚  Recent Files", "Spc f o", "Telescope oldfiles" },
      { "󰈭  Find Word", "Spc f w", "Telescope live_grep" },
      { "  Bookmarks", "Spc m a", "Telescope marks" },
      { "  Themes", "Spc t h", "Telescope themes" },
      { "  Mappings", "Spc c h", "NvCheatsheet" },
    },
  },
  transparency = true,
}
M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"

return M
