---@diagnostic disable: undefined-global
local M = {}

local function get_module_name(path, prefix)
  local name = path
  name = name:gsub(prefix, '')
  name = name:gsub('^/', '')
  name = name:gsub('%.lua$', '')
  return name
end

M.load_lua_files = function(dir)
  local lua_path = vim.fn.stdpath('config') .. '/lua'
  local paths = vim.fn.glob(lua_path .. '/' .. dir .. '/**/*.lua')
  if vim.fn.empty(paths) == 0 then
    for _, path in ipairs(vim.fn.split(paths)) do
      require(get_module_name(path, lua_path))
    end
  end
end

return M
