-- Get the path to the plugin configurations
local plugins_path = vim.fn.stdpath("config") .. "/lua/ruanb/plugins"

-- Load each plugin file
for _, file in ipairs(vim.fn.readdir(plugins_path)) do
  local plugin = file:sub(1, -5)  -- Remove the ".lua" extension
  require("ruanb.plugins." .. plugin)
end
