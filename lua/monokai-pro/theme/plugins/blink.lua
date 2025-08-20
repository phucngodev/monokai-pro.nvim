local M = {}

--- @param c Colorscheme The color palette
--- @param config Config
--- @param hp Helper
function M.get(c, config, hp)
  local float_winBackgroundClear = vim.tbl_contains(config.background_clear, "float_win")
  return {
    BlinkCmpMenu = { bg = c.editor.background },
    BlinkCmpLabelDescription = { fg = hp.lighten(c.base.dimmed1, 3) },
    BlinkCmpLabelDeprecated = { fg = nil, bg = nil, strikethrough = true },
    BlinkCmpGhostText = { link = "Comment" },
    BlinkCmpLabel = { fg = hp.lighten(c.editorSuggestWidget.foreground, -15) },
    BlinkCmpLabelMatch = { fg = c.editorSuggestWidget.highlightForeground, bold = true },
    BlinkCmpSource = { fg = c.editorSuggestWidget.foreground },
    BlinkCmpKind = { fg = hp.lighten(c.editorSuggestWidget.foreground, -15) },
    BlinkCmpKindArray = { fg = c.base.red },
    BlinkCmpKindBoolean = { fg = c.base.red },
    BlinkCmpKindClass = { fg = c.base.cyan },
    BlinkCmpKindColor = { fg = c.base.magenta },
    BlinkCmpKindConstant = { fg = c.base.magenta },
    BlinkCmpKindConstructor = { fg = c.base.green },
    BlinkCmpKindEnum = { fg = c.base.blue },
    BlinkCmpKindEnumMember = { fg = c.base.blue },
    BlinkCmpKindEvent = { fg = c.base.blue },
    BlinkCmpKindField = { fg = c.base.blue },
    BlinkCmpKindFile = { fg = c.editorLineNumber.activeForeground },
    BlinkCmpKindFolder = { fg = c.editorLineNumber.activeForeground },
    BlinkCmpKindFunction = { fg = c.base.green },
    BlinkCmpKindInterface = { fg = c.base.cyan },
    BlinkCmpKindKey = { fg = c.base.blue },
    BlinkCmpKindKeyword = { fg = c.base.red },
    BlinkCmpKindMethod = { fg = c.base.green },
    BlinkCmpKindModule = { fg = c.base.cyan },
    BlinkCmpKindNamespace = { fg = c.base.cyan },
    BlinkCmpKindNull = { fg = c.base.magenta },
    BlinkCmpKindNumber = { fg = c.base.magenta },
    BlinkCmpKindObject = { fg = c.base.cyan },
    BlinkCmpKindOperator = { fg = c.base.red },
    BlinkCmpKindPackage = { fg = c.base.magenta },
    BlinkCmpKindProperty = { fg = c.base.blue },
    BlinkCmpKindReference = { fg = c.base.magenta },
    BlinkCmpKindSnippet = { fg = c.base.green },
    BlinkCmpKindString = { fg = c.base.yellow },
    BlinkCmpKindStruct = { fg = c.base.red },
    BlinkCmpKindText = { fg = c.base.yellow },
    BlinkCmpKindTypeParameter = { fg = c.base.blue },
    BlinkCmpKindUnit = { fg = c.base.magenta },
    BlinkCmpKindVariable = { fg = c.base.cyan },
  }
end

return M
