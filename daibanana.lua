local M = {}

function M.setup()
  vim.opt.termguicolors = true
  vim.opt.background = "dark"

  vim.cmd("highlight clear")
  vim.g.colors_name = "daibanana"

  local p = {
    -- base
    bg         = "#121015",
    bg_alt     = "#18151B",
    surface    = "#221D24",
    border     = "#3A3038",

    -- text
    fg         = "#E7DED3",
    fg_soft    = "#B6AA9C",
    comment    = "#857A73",

    -- accents
    red        = "#B44A57",
    orange     = "#C97A49",
    gold       = "#D1A34E",
    chartreuse = "#9CAF57",
    green      = "#7E9A68",
    blue       = "#7085BA",
    magenta    = "#A86C8F",
    cyan       = "#6E9E98",

    -- ui
    cursor     = "#F0D7A1",
    selection  = "#332A31",

    -- states
    error      = "#CC5C67",
    warning    = "#D8A84D",
    info       = "#7D96D1",
    hint       = "#8AAE9B",

    -- ansi
    ansi       = {
      "#18151B", -- black
      "#B44A57", -- red
      "#7E9A68", -- green
      "#D1A34E", -- yellow
      "#7085BA", -- blue
      "#A86C8F", -- magenta
      "#6E9E98", -- cyan
      "#D8CFC4", -- white
    },

    brights    = {
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

  local highlights = {
    -- base editor
    Normal                     = { fg = p.fg, bg = p.bg },
    NormalNC                   = { fg = p.fg, bg = p.bg },
    NormalFloat                = { fg = p.fg, bg = p.surface },
    FloatBorder                = { fg = p.border, bg = p.surface },
    FloatTitle                 = { fg = p.gold, bg = p.surface, bold = true },

    ColorColumn                = { bg = p.bg_alt },
    Conceal                    = { fg = p.fg_soft },
    Cursor                     = { fg = p.bg, bg = p.cursor },
    lCursor                    = { fg = p.bg, bg = p.cursor },
    CursorIM                   = { fg = p.bg, bg = p.cursor },
    CursorColumn               = { bg = p.bg_alt },
    CursorLine                 = { bg = p.bg_alt },
    CursorLineNr               = { fg = p.gold, bg = p.bg_alt, bold = true },
    LineNr                     = { fg = p.comment, bg = p.bg },
    SignColumn                 = { fg = p.fg_soft, bg = p.bg },
    CursorLineSign             = { fg = p.gold, bg = p.bg_alt },
    CursorLineFold             = { fg = p.gold, bg = p.bg_alt },

    Directory                  = { fg = p.blue, bold = true },
    EndOfBuffer                = { fg = p.bg_alt },
    NonText                    = { fg = p.border },
    Whitespace                 = { fg = p.border },
    SpecialKey                 = { fg = p.border },

    -- messages
    ErrorMsg                   = { fg = p.error, bold = true },
    WarningMsg                 = { fg = p.warning, bold = true },
    ModeMsg                    = { fg = p.gold, bold = true },
    MoreMsg                    = { fg = p.green, bold = true },
    Question                   = { fg = p.green, bold = true },
    MsgArea                    = { fg = p.fg, bg = p.bg },
    MsgSeparator               = { fg = p.border, bg = p.bg },

    -- folds
    Folded                     = { fg = p.fg_soft, bg = p.bg_alt, italic = true },
    FoldColumn                 = { fg = p.comment, bg = p.bg },

    -- search / selection
    Search                     = { fg = p.bg, bg = p.gold },
    CurSearch                  = { fg = p.bg, bg = p.warning, bold = true },
    IncSearch                  = { fg = p.bg, bg = p.warning, bold = true },
    Substitute                 = { fg = p.bg, bg = p.red, bold = true },
    MatchParen                 = { fg = p.gold, bold = true, underline = true },
    Visual                     = { bg = p.selection },
    VisualNOS                  = { bg = p.selection },

    -- popup menu
    Pmenu                      = { fg = p.fg, bg = p.surface },
    PmenuSel                   = { fg = p.fg, bg = p.selection, bold = true },
    PmenuSbar                  = { bg = p.bg_alt },
    PmenuThumb                 = { bg = p.border },
    WildMenu                   = { fg = p.bg, bg = p.gold, bold = true },

    -- status/tab/splits
    StatusLine                 = { fg = p.fg, bg = p.surface },
    StatusLineNC               = { fg = p.fg_soft, bg = p.bg_alt },
    TabLine                    = { fg = p.fg_soft, bg = p.bg_alt },
    TabLineFill                = { fg = p.border, bg = p.bg },
    TabLineSel                 = { fg = p.fg, bg = p.red, bold = true },
    WinSeparator               = { fg = p.border, bg = p.bg },
    VertSplit                  = { fg = p.border, bg = p.bg },

    -- titles / quickfix
    Title                      = { fg = p.gold, bold = true },
    QuickFixLine               = { fg = p.gold, bg = p.bg_alt, bold = true },

    -- generic syntax
    Comment                    = { fg = p.comment, italic = true },

    Constant                   = { fg = p.orange },
    String                     = { fg = p.chartreuse },
    Character                  = { fg = p.chartreuse },
    Number                     = { fg = p.orange },
    Boolean                    = { fg = p.orange },
    Float                      = { fg = p.orange },

    Identifier                 = { fg = p.fg },
    Function                   = { fg = p.gold },

    Statement                  = { fg = p.red },
    Conditional                = { fg = p.red },
    Repeat                     = { fg = p.red },
    Label                      = { fg = p.gold },
    Operator                   = { fg = p.fg_soft },
    Keyword                    = { fg = p.red },
    Exception                  = { fg = p.red },

    PreProc                    = { fg = p.magenta },
    Include                    = { fg = p.red },
    Define                     = { fg = p.red },
    Macro                      = { fg = p.magenta },
    PreCondit                  = { fg = p.magenta },

    Type                       = { fg = p.blue },
    StorageClass               = { fg = p.blue },
    Structure                  = { fg = p.blue },
    Typedef                    = { fg = p.blue },

    Special                    = { fg = p.magenta },
    SpecialChar                = { fg = p.magenta },
    Tag                        = { fg = p.red },
    Delimiter                  = { fg = p.fg_soft },
    SpecialComment             = { fg = p.comment, italic = true },
    Debug                      = { fg = p.error },

    Underlined                 = { fg = p.blue, underline = true },
    Ignore                     = { fg = p.comment },
    Error                      = { fg = p.error, bold = true },
    Todo                       = { fg = p.bg, bg = p.red, bold = true },

    -- diff
    DiffAdd                    = { fg = p.green, bg = p.bg_alt },
    DiffChange                 = { fg = p.blue, bg = p.bg_alt },
    DiffDelete                 = { fg = p.error, bg = p.bg_alt },
    DiffText                   = { fg = p.gold, bg = p.selection, bold = true },

    Added                      = { fg = p.green },
    Changed                    = { fg = p.blue },
    Removed                    = { fg = p.error },

    -- spell
    SpellBad                   = { sp = p.error, undercurl = true },
    SpellCap                   = { sp = p.blue, undercurl = true },
    SpellLocal                 = { sp = p.cyan, undercurl = true },
    SpellRare                  = { sp = p.magenta, undercurl = true },

    -- diagnostics
    DiagnosticError            = { fg = p.error },
    DiagnosticWarn             = { fg = p.warning },
    DiagnosticInfo             = { fg = p.info },
    DiagnosticHint             = { fg = p.hint },
    DiagnosticOk               = { fg = p.green },

    DiagnosticSignError        = { fg = p.error, bg = p.bg },
    DiagnosticSignWarn         = { fg = p.warning, bg = p.bg },
    DiagnosticSignInfo         = { fg = p.info, bg = p.bg },
    DiagnosticSignHint         = { fg = p.hint, bg = p.bg },
    DiagnosticSignOk           = { fg = p.green, bg = p.bg },

    DiagnosticVirtualTextError = { fg = p.error, bg = p.bg_alt },
    DiagnosticVirtualTextWarn  = { fg = p.warning, bg = p.bg_alt },
    DiagnosticVirtualTextInfo  = { fg = p.info, bg = p.bg_alt },
    DiagnosticVirtualTextHint  = { fg = p.hint, bg = p.bg_alt },
    DiagnosticVirtualTextOk    = { fg = p.green, bg = p.bg_alt },

    DiagnosticUnderlineError   = { sp = p.error, undercurl = true },
    DiagnosticUnderlineWarn    = { sp = p.warning, undercurl = true },
    DiagnosticUnderlineInfo    = { sp = p.info, undercurl = true },
    DiagnosticUnderlineHint    = { sp = p.hint, undercurl = true },
    DiagnosticUnderlineOk      = { sp = p.green, undercurl = true },

    Deprecated                 = { fg = p.comment, strikethrough = true },

    -- common built-in extras
    ToolbarLine                = { fg = p.fg, bg = p.bg_alt },
    ToolbarButton              = { fg = p.fg, bg = p.selection, bold = true },
  }

  for group, spec in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, spec)
  end
end

return M
