local M = {}

M.palette = {
  -- base
  bg        = "#121015",
  bg_alt    = "#18151B",
  surface   = "#221D24",
  border    = "#3A3038",

  -- text
  fg        = "#E7DED3",
  fg_soft   = "#B6AA9C",
  comment   = "#857A73",

  -- accents
  red       = "#B44A57",
  orange    = "#C97A49",
  gold      = "#D1A34E",
  green     = "#7E9A68",
  blue      = "#7085BA",
  magenta   = "#A86C8F",
  cyan      = "#6E9E98",

  -- ui
  cursor    = "#F0D7A1",
  selection = "#332A31",

  -- states
  error     = "#CC5C67",
  warning   = "#D8A84D",
  info      = "#7D96D1",
  hint      = "#8AAE9B",

  -- ansi
  ansi      = {
    "#18151B", -- black
    "#B44A57", -- red
    "#7E9A68", -- green
    "#D1A34E", -- yellow
    "#7085BA", -- blue
    "#A86C8F", -- magenta
    "#6E9E98", -- cyan
    "#D8CFC4", -- white
  },

  brights   = {
    "#6E6460", -- bright black
    "#CD6975", -- bright red
    "#99AD74", -- bright green
    "#E1BA63", -- bright yellow
    "#8EA3DC", -- bright blue
    "#C28AAD", -- bright magenta
    "#8DBAB3", -- bright cyan
    "#F7F0E7", -- bright white
  },
}

function M.setup()
  vim.opt.termguicolors = true
  vim.opt.background = "dark"

  vim.cmd("highlight clear")
  vim.g.colors_name       = "daibanana"

  local p                 = M.palette

  vim.g.terminal_color_0  = p.ansi[1]
  vim.g.terminal_color_1  = p.ansi[2]
  vim.g.terminal_color_2  = p.ansi[3]
  vim.g.terminal_color_3  = p.ansi[4]
  vim.g.terminal_color_4  = p.ansi[5]
  vim.g.terminal_color_5  = p.ansi[6]
  vim.g.terminal_color_6  = p.ansi[7]
  vim.g.terminal_color_7  = p.ansi[8]
  vim.g.terminal_color_8  = p.brights[1]
  vim.g.terminal_color_9  = p.brights[2]
  vim.g.terminal_color_10 = p.brights[3]
  vim.g.terminal_color_11 = p.brights[4]
  vim.g.terminal_color_12 = p.brights[5]
  vim.g.terminal_color_13 = p.brights[6]
  vim.g.terminal_color_14 = p.brights[7]
  vim.g.terminal_color_15 = p.brights[8]

  local highlights        = {
    -- base editor
    Normal                                   = { fg = p.fg, bg = p.bg },
    NormalNC                                 = { fg = p.fg, bg = p.bg },
    NormalFloat                              = { fg = p.fg, bg = p.surface },
    FloatBorder                              = { fg = p.border, bg = p.surface },
    FloatTitle                               = { fg = p.gold, bg = p.surface, bold = true },

    ColorColumn                              = { bg = p.bg_alt },
    Conceal                                  = { fg = p.fg_soft },
    Cursor                                   = { fg = p.bg, bg = p.cursor },
    lCursor                                  = { fg = p.bg, bg = p.cursor },
    CursorIM                                 = { fg = p.bg, bg = p.cursor },
    CursorColumn                             = { bg = p.bg_alt },
    CursorLine                               = { bg = p.bg_alt },
    CursorLineNr                             = { fg = p.gold, bg = p.bg_alt, bold = true },
    LineNr                                   = { fg = p.comment, bg = p.bg },
    SignColumn                               = { fg = p.fg_soft, bg = p.bg },
    CursorLineSign                           = { fg = p.gold, bg = p.bg_alt },
    CursorLineFold                           = { fg = p.gold, bg = p.bg_alt },

    Directory                                = { fg = p.blue, bold = true },
    EndOfBuffer                              = { fg = p.bg_alt },
    NonText                                  = { fg = p.border },
    Whitespace                               = { fg = p.border },
    SpecialKey                               = { fg = p.border },

    -- messages
    ErrorMsg                                 = { fg = p.error, bold = true },
    WarningMsg                               = { fg = p.warning, bold = true },
    ModeMsg                                  = { fg = p.gold, bold = true },
    MoreMsg                                  = { fg = p.green, bold = true },
    Question                                 = { fg = p.green, bold = true },
    MsgArea                                  = { fg = p.fg, bg = p.bg },
    MsgSeparator                             = { fg = p.border, bg = p.bg },

    -- folds
    Folded                                   = { fg = p.fg_soft, bg = p.bg_alt, italic = true },
    FoldColumn                               = { fg = p.comment, bg = p.bg },

    -- search / selection
    Search                                   = { fg = p.bg, bg = p.gold },
    CurSearch                                = { fg = p.bg, bg = p.warning, bold = true },
    IncSearch                                = { fg = p.bg, bg = p.warning, bold = true },
    Substitute                               = { fg = p.bg, bg = p.red, bold = true },
    MatchParen                               = { fg = p.gold, bold = true, underline = true },
    Visual                                   = { bg = p.selection },
    VisualNOS                                = { bg = p.selection },

    -- popup menu
    Pmenu                                    = { fg = p.fg, bg = p.surface },
    PmenuSel                                 = { fg = p.fg, bg = p.selection, bold = true },
    PmenuSbar                                = { bg = p.bg_alt },
    PmenuThumb                               = { bg = p.border },
    WildMenu                                 = { fg = p.bg, bg = p.gold, bold = true },

    -- status/tab/splits
    StatusLine                               = { fg = p.fg, bg = p.surface },
    StatusLineNC                             = { fg = p.fg_soft, bg = p.bg_alt },
    TabLine                                  = { fg = p.fg_soft, bg = p.bg_alt },
    TabLineFill                              = { fg = p.border, bg = p.bg },
    TabLineSel                               = { fg = p.fg, bg = p.red, bold = true },
    WinSeparator                             = { fg = p.border, bg = p.bg },
    VertSplit                                = { fg = p.border, bg = p.bg },

    -- titles / quickfix
    Title                                    = { fg = p.gold, bold = true },
    QuickFixLine                             = { fg = p.gold, bg = p.bg_alt, bold = true },

    -- generic syntax
    Comment                                  = { fg = p.comment, italic = true },

    Constant                                 = { fg = p.orange },
    String                                   = { fg = p.orange },
    Character                                = { fg = p.orange },
    Number                                   = { fg = p.orange },
    Boolean                                  = { fg = p.orange },
    Float                                    = { fg = p.orange },

    Identifier                               = { fg = p.fg },
    Function                                 = { fg = p.gold },

    Statement                                = { fg = p.red },
    Conditional                              = { fg = p.red },
    Repeat                                   = { fg = p.red },
    Label                                    = { fg = p.gold },
    Operator                                 = { fg = p.fg_soft },
    Keyword                                  = { fg = p.red },
    Exception                                = { fg = p.red },

    PreProc                                  = { fg = p.magenta },
    Include                                  = { fg = p.red },
    Define                                   = { fg = p.red },
    Macro                                    = { fg = p.magenta },
    PreCondit                                = { fg = p.magenta },

    Type                                     = { fg = p.blue },
    StorageClass                             = { fg = p.blue },
    Structure                                = { fg = p.blue },
    Typedef                                  = { fg = p.blue },

    Special                                  = { fg = p.magenta },
    SpecialChar                              = { fg = p.magenta },
    Tag                                      = { fg = p.red },
    Delimiter                                = { fg = p.fg_soft },
    SpecialComment                           = { fg = p.comment, italic = true },
    Debug                                    = { fg = p.error },

    Underlined                               = { fg = p.blue, underline = true },
    Ignore                                   = { fg = p.comment },
    Error                                    = { fg = p.error, bold = true },
    Todo                                     = { fg = p.bg, bg = p.red, bold = true },

    -- diff
    DiffAdd                                  = { fg = p.green, bg = p.bg_alt },
    DiffChange                               = { fg = p.blue, bg = p.bg_alt },
    DiffDelete                               = { fg = p.error, bg = p.bg_alt },
    DiffText                                 = { fg = p.gold, bg = p.selection, bold = true },

    Added                                    = { fg = p.green },
    Changed                                  = { fg = p.blue },
    Removed                                  = { fg = p.error },

    -- spell
    SpellBad                                 = { sp = p.error, undercurl = true },
    SpellCap                                 = { sp = p.blue, undercurl = true },
    SpellLocal                               = { sp = p.cyan, undercurl = true },
    SpellRare                                = { sp = p.magenta, undercurl = true },

    -- diagnostics
    DiagnosticError                          = { fg = p.error },
    DiagnosticWarn                           = { fg = p.warning },
    DiagnosticInfo                           = { fg = p.info },
    DiagnosticHint                           = { fg = p.hint },
    DiagnosticOk                             = { fg = p.green },

    DiagnosticSignError                      = { fg = p.error, bg = p.bg },
    DiagnosticSignWarn                       = { fg = p.warning, bg = p.bg },
    DiagnosticSignInfo                       = { fg = p.info, bg = p.bg },
    DiagnosticSignHint                       = { fg = p.hint, bg = p.bg },
    DiagnosticSignOk                         = { fg = p.green, bg = p.bg },

    DiagnosticVirtualTextError               = { fg = p.error, bg = p.bg_alt },
    DiagnosticVirtualTextWarn                = { fg = p.warning, bg = p.bg_alt },
    DiagnosticVirtualTextInfo                = { fg = p.info, bg = p.bg_alt },
    DiagnosticVirtualTextHint                = { fg = p.hint, bg = p.bg_alt },
    DiagnosticVirtualTextOk                  = { fg = p.green, bg = p.bg_alt },

    DiagnosticUnderlineError                 = { sp = p.error, undercurl = true },
    DiagnosticUnderlineWarn                  = { sp = p.warning, undercurl = true },
    DiagnosticUnderlineInfo                  = { sp = p.info, undercurl = true },
    DiagnosticUnderlineHint                  = { sp = p.hint, undercurl = true },
    DiagnosticUnderlineOk                    = { sp = p.green, undercurl = true },

    Deprecated                               = { fg = p.comment, strikethrough = true },

    -- common built-in extras
    ToolbarLine                              = { fg = p.fg, bg = p.bg_alt },
    ToolbarButton                            = { fg = p.fg, bg = p.selection, bold = true },

    -- LSP
    -- LSP UI + semantic tokens
    -- merge into your existing `highlights` table

    -- classic LSP highlight groups
    LspReferenceText                         = { bg = p.bg_alt, underline = true },
    LspReferenceRead                         = { bg = p.bg_alt, underline = true },
    LspReferenceWrite                        = { fg = p.red, bg = p.selection, bold = true },
    LspReferenceTarget                       = { fg = p.gold, bg = p.selection, bold = true },

    LspInlayHint                             = { fg = p.comment, bg = p.bg_alt, italic = true },
    LspCodeLens                              = { fg = p.comment, italic = true },
    LspCodeLensSeparator                     = { fg = p.border },
    LspSignatureActiveParameter              = { fg = p.gold, bold = true, underline = true },

    -- semantic token types
    ["@lsp.type.class"]                      = { fg = p.blue },
    ["@lsp.type.comment"]                    = { fg = p.comment, italic = true },
    ["@lsp.type.decorator"]                  = { fg = p.magenta },
    ["@lsp.type.enum"]                       = { fg = p.blue },
    ["@lsp.type.enumMember"]                 = { fg = p.orange },
    ["@lsp.type.event"]                      = { fg = p.magenta },
    ["@lsp.type.function"]                   = { fg = p.gold },
    ["@lsp.type.interface"]                  = { fg = p.blue },
    ["@lsp.type.keyword"]                    = { fg = p.red },
    ["@lsp.type.macro"]                      = { fg = p.magenta },
    ["@lsp.type.method"]                     = { fg = p.gold },
    ["@lsp.type.modifier"]                   = { fg = p.fg_soft },
    ["@lsp.type.namespace"]                  = { fg = p.blue },
    ["@lsp.type.number"]                     = { fg = p.orange },
    ["@lsp.type.operator"]                   = { fg = p.fg_soft },
    ["@lsp.type.parameter"]                  = { fg = p.fg_soft, italic = true },
    ["@lsp.type.property"]                   = { fg = p.fg },
    ["@lsp.type.regexp"]                     = { fg = p.cyan },
    ["@lsp.type.string"]                     = { fg = p.orange },
    ["@lsp.type.struct"]                     = { fg = p.blue },
    ["@lsp.type.type"]                       = { fg = p.blue },
    ["@lsp.type.typeParameter"]              = { fg = p.blue, italic = true },
    ["@lsp.type.variable"]                   = { fg = p.fg },

    -- semantic token modifiers
    ["@lsp.mod.declaration"]                 = { bold = true },
    ["@lsp.mod.definition"]                  = { underline = true },
    ["@lsp.mod.readonly"]                    = { italic = true },
    ["@lsp.mod.static"]                      = { fg = p.orange },
    ["@lsp.mod.deprecated"]                  = { fg = p.comment, strikethrough = true },
    ["@lsp.mod.abstract"]                    = { fg = p.magenta, italic = true },
    ["@lsp.mod.async"]                       = { fg = p.cyan },
    ["@lsp.mod.modification"]                = { underline = true },
    ["@lsp.mod.documentation"]               = { fg = p.comment, italic = true },
    ["@lsp.mod.defaultLibrary"]              = { fg = p.blue, italic = true },

    -- more specific semantic type+modifier combos
    ["@lsp.typemod.function.async"]          = { fg = p.cyan, bold = true },
    ["@lsp.typemod.method.async"]            = { fg = p.cyan },
    ["@lsp.typemod.function.defaultLibrary"] = { fg = p.blue, bold = true },
    ["@lsp.typemod.variable.readonly"]       = { fg = p.orange, italic = true },
    ["@lsp.typemod.variable.defaultLibrary"] = { fg = p.blue, italic = true },
    ["@lsp.typemod.property.readonly"]       = { fg = p.orange },
    ["@lsp.typemod.class.defaultLibrary"]    = { fg = p.blue, bold = true },

    -- Treesitter
    ["@variable"]                            = { fg = p.fg },
    ["@variable.builtin"]                    = { fg = p.orange, italic = true },
    ["@variable.parameter"]                  = { fg = p.fg_soft, italic = true },
    ["@variable.parameter.builtin"]          = { fg = p.orange, italic = true },
    ["@variable.member"]                     = { fg = p.fg },

    ["@constant"]                            = { fg = p.orange },
    ["@constant.builtin"]                    = { fg = p.orange, bold = true },
    ["@constant.macro"]                      = { fg = p.magenta },

    ["@module"]                              = { fg = p.blue },
    ["@module.builtin"]                      = { fg = p.blue, italic = true },
    ["@label"]                               = { fg = p.gold },

    -- strings / chars / numbers
    ["@string"]                              = { fg = p.orange },
    ["@string.documentation"]                = { fg = p.green, italic = true },
    ["@string.regexp"]                       = { fg = p.cyan },
    ["@string.escape"]                       = { fg = p.gold },
    ["@string.special"]                      = { fg = p.magenta },
    ["@string.special.symbol"]               = { fg = p.orange },
    ["@string.special.path"]                 = { fg = p.orange, underline = true },
    ["@string.special.url"]                  = { fg = p.blue, underline = true },

    ["@character"]                           = { fg = p.orange },
    ["@character.special"]                   = { fg = p.gold },

    ["@boolean"]                             = { fg = p.orange },
    ["@number"]                              = { fg = p.orange },
    ["@number.float"]                        = { fg = p.orange },

    -- types / attributes / properties
    ["@type"]                                = { fg = p.blue },
    ["@type.builtin"]                        = { fg = p.blue, italic = true },
    ["@type.definition"]                     = { fg = p.blue, bold = true },

    ["@attribute"]                           = { fg = p.magenta },
    ["@attribute.builtin"]                   = { fg = p.magenta, italic = true },
    ["@property"]                            = { fg = p.fg },

    -- functions / constructors
    ["@function"]                            = { fg = p.gold },
    ["@function.builtin"]                    = { fg = p.gold, italic = true },
    ["@function.call"]                       = { fg = p.gold },
    ["@function.macro"]                      = { fg = p.magenta },

    ["@function.method"]                     = { fg = p.gold },
    ["@function.method.call"]                = { fg = p.gold },

    ["@constructor"]                         = { fg = p.blue, bold = true },
    ["@operator"]                            = { fg = p.fg_soft },

    -- keywords
    ["@keyword"]                             = { fg = p.red },
    ["@keyword.coroutine"]                   = { fg = p.cyan },
    ["@keyword.function"]                    = { fg = p.red, bold = true },
    ["@keyword.operator"]                    = { fg = p.red },
    ["@keyword.import"]                      = { fg = p.red },
    ["@keyword.type"]                        = { fg = p.red },
    ["@keyword.modifier"]                    = { fg = p.red },
    ["@keyword.repeat"]                      = { fg = p.red },
    ["@keyword.return"]                      = { fg = p.red, bold = true },
    ["@keyword.debug"]                       = { fg = p.magenta },
    ["@keyword.exception"]                   = { fg = p.red },
    ["@keyword.conditional"]                 = { fg = p.red },
    ["@keyword.conditional.ternary"]         = { fg = p.red },
    ["@keyword.directive"]                   = { fg = p.magenta },
    ["@keyword.directive.define"]            = { fg = p.magenta, bold = true },

    -- punctuation
    ["@punctuation.delimiter"]               = { fg = p.fg_soft },
    ["@punctuation.bracket"]                 = { fg = p.fg_soft },
    ["@punctuation.special"]                 = { fg = p.magenta },

    -- comments
    ["@comment"]                             = { fg = p.comment, italic = true },
    ["@comment.documentation"]               = { fg = p.comment, italic = true },

    ["@comment.error"]                       = { fg = p.error, bold = true },
    ["@comment.warning"]                     = { fg = p.warning, bold = true },
    ["@comment.todo"]                        = { fg = p.bg, bg = p.red, bold = true },
    ["@comment.note"]                        = { fg = p.info, italic = true },

    -- markup
    ["@markup.strong"]                       = { bold = true },
    ["@markup.italic"]                       = { italic = true },
    ["@markup.strikethrough"]                = { strikethrough = true },
    ["@markup.underline"]                    = { underline = true },

    ["@markup.heading"]                      = { fg = p.gold, bold = true },
    ["@markup.heading.1"]                    = { fg = p.gold, bold = true },
    ["@markup.heading.2"]                    = { fg = p.red, bold = true },
    ["@markup.heading.3"]                    = { fg = p.blue, bold = true },
    ["@markup.heading.4"]                    = { fg = p.magenta, bold = true },
    ["@markup.heading.5"]                    = { fg = p.orange, bold = true },
    ["@markup.heading.6"]                    = { fg = p.orange, bold = true },

    ["@markup.quote"]                        = { fg = p.fg_soft, italic = true },
    ["@markup.math"]                         = { fg = p.cyan },

    ["@markup.link"]                         = { fg = p.blue, underline = true },
    ["@markup.link.label"]                   = { fg = p.magenta },
    ["@markup.link.url"]                     = { fg = p.orange, underline = true },

    ["@markup.raw"]                          = { fg = p.green },
    ["@markup.raw.block"]                    = { fg = p.green },

    ["@markup.list"]                         = { fg = p.red },
    ["@markup.list.checked"]                 = { fg = p.green, bold = true },
    ["@markup.list.unchecked"]               = { fg = p.comment },

    -- diff
    ["@diff.plus"]                           = { fg = p.green },
    ["@diff.minus"]                          = { fg = p.error },
    ["@diff.delta"]                          = { fg = p.blue },

    -- tags
    ["@tag"]                                 = { fg = p.red },
    ["@tag.builtin"]                         = { fg = p.red, italic = true },
    ["@tag.attribute"]                       = { fg = p.orange },
    ["@tag.delimiter"]                       = { fg = p.fg_soft },
  }

  for group, spec in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, spec)
  end
end

return M
