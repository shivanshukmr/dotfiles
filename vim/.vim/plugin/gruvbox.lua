require("gruvbox").setup({
  italic = {
    strings = false
  },
  palette_overrides = {
    dark0_soft = "#121212",
    dark0 = "#121212",
    dark1 = "#1d2021",
    dark2 = "#282828",
    bright_red = "#d75f5f"
  },
  overrides = {
    Type = { link = "GruvboxAqua" },
    ["Operator"] = { link = "Normal" },

    ["DiagnosticVirtualTextError"] = { link = "GruvboxRedSign" },
    ["DiagnosticVirtualTextWarn"] = { link = "GruvboxOrangeSign" },
    ["DiagnosticVirtualTextInfo"] = { link = "GruvboxBlueSign" },
    ["DiagnosticVirtualTextHint"] = { link = "GruvboxAquaSign" },

    ["@punctuation"]           = { link = "Normal" },
    ["@punctuation.delimiter"] = { link = "Normal" },
    ["@punctuation.bracket"]   = { link = "Normal" },
    ["@punctuation.special"]   = { link = "Normal" },

    ["@parameter"]          = { link = "GruvboxFg1" },
    ["@variable.parameter"] = { link = "GruvboxFg1" },

    ["@keyword.import"] = { link = "Keyword" },
    ["@type.qualifier"] = { link = "GruvboxYellow" },
  },
  contrast = "soft"
})
vim.cmd("colorscheme gruvbox")
