local util = require("monokai-pro.util")
local config = require("monokai-pro.config")

local M = {}

M.create_filter_command = function()
  local cmd = vim.api.nvim_create_user_command

  cmd("MonokaiProSelect", function()
    local menu = util.ui.create_menu("Set monokai filter", {
      "nocolor",
      "pro",
      "octagon",
      "light",
      "machine",
      "ristretto",
      "spectrum",
      "classic",
    }, function(item)
      local filter = item.value
      config.extend({ filter = filter })
      vim.cmd([[colorscheme monokai-pro]])
    end)
    assert(menu, "Error: Fail to create menu")
    menu:mount()
  end, { nargs = 0 })

  cmd("MonokaiPro", function(opts)
    local filter = opts.args
    config.extend({ filter = filter })
    vim.cmd([[colorscheme monokai-pro]])
  end, {
    nargs = 1,
    complete = function()
      return {
        "classic",
        "light",
        "machine",
        "octagon",
        "pro",
        "ristretto",
        "spectrum",
        "nocolor",
      }
    end,
  })
end

return M
