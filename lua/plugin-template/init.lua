-- this runs when the plugin in required
-- this will only run once as the module will be cached
-- clear the cache with the following command
-- `:lua package.loaded['plugin-template'] = nil`

print("plugin-template: lua/plugin-template/init.lua")

-- create a module
local M = {}

-- private by convention
M._greetings = {}

local greeting = function()
  return "Hello from plugin-template!!!"
end

M.hello = function()
  print(greeting())
end

return M
