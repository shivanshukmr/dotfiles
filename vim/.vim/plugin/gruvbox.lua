function clearhl(_, hi)
  vim.api.nvim_set_hl(0, hi, {})
end

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
    ["DiagnosticVirtualTextError"] = { link = "GruvboxRedSign" },
    ["DiagnosticVirtualTextWarn"] = { link = "GruvboxOrangeSign" },
    ["DiagnosticVirtualTextInfo"] = { link = "GruvboxBlueSign" },
    ["DiagnosticVirtualTextHint"] = { link = "GruvboxAquaSign" },

    ["@parameter"]          = { link = "GruvboxFg1" },
    ["@variable.parameter"] = { link = "GruvboxFg1" },

    ["@keyword.import"] = { link = "Keyword" },
    ["@type.qualifier"] = { link = "GruvboxYellow" },
  },
  contrast = "soft"
})

vim.cmd("colorscheme gruvbox")

to_clear = {
  "Operator",
  "@punctuation",
  "@punctuation.delimiter",
  "@punctuation.bracket",
  "@punctuation.special",
}
table.foreach(to_clear, clearhl)
