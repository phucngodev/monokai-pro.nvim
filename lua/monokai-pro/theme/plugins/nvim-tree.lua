local M = {}

--- @param c Colorscheme The color palette
--- @param config Config
function M.get(c, config, _)
  local isBackgroundClear = vim.tbl_contains(config.background_clear, "nvim-tree")
  local sidebar_bg = isBackgroundClear and c.editor.background or c.sideBar.background
  return {
    NvimTreeFolderIcon = { fg = c.sideBar.foreground },

    NvimTreeIndentMarker = { link = "IndentBlanklineChar" },

    NvimTreeNormal = { bg = c.editor.background, fg = c.sideBar.foreground },
    NvimTreeEndOfBuffer = { bg = c.editor.background, fg = c.sideBar.foreground },
    NvimTreeWinSeparator = { bg = c.editor.background, fg = c.base.dimmed5 },
    NvimTreeExecFile = { fg = c.sideBar.foreground },
    NvimTreeSpecialFile = { fg = c.sideBar.foreground },

    NvimTreeFolderName = { fg = c.sideBar.foreground },
    NvimTreeOpenedFolderName = { fg = c.sideBar.foreground, italic = true },
    NvimTreeEmptyFolderName = { fg = c.sideBar.foreground, italic = true },
    NvimTreeImageFile = { fg = c.base.white },
    NvimTreeCursorLine = { bg = c.base.dimmed5 },

    NvimTreeGitIgnored = { fg = c.gitDecoration.ignoredResourceForeground },
    NvimTreeGitignoreIcon = { fg = c.gitDecoration.ignoredResourceForeground },
    NvimTreeGitStaged = { fg = c.gitDecoration.stageModifiedResourceForeground },
    NvimTreeGitDirty = { fg = c.gitDecoration.modifiedResourceForeground }, -- unstaged/modified
    NvimTreeGitNew = { fg = c.gitDecoration.untrackedResourceForeground },
    NvimTreeGitRenamed = { fg = c.gitDecoration.untrackedResourceForeground },
    NvimTreeGitDeleted = { fg = c.gitDecoration.deletedResourceForeground },
    NvimTreeGitMerge = { fg = c.gitDecoration.conflictingResourceForeground },

    NvimTreeSymlink = { fg = c.base.white },
    NvimTreeRootFolder = {
      fg = c.sideBarSectionHeader.foreground,
      bold = true,
    },
  }
end

return M
