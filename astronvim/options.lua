return {
  opt = {
    relativenumber = false,
  },
  lsp = {
    formatting = {
      format_on_save = true,
    },
    servers = {
      "stylelint_lsp",
    },
    config = {
      stylelint_lsp = {
        cssInJs = false,
        filetypes = { "css", "scss", "sass", "postcss", "sugarss", "styl", "stylus", "sss" },
        validateOnType = true,
        validateOnSave = true,
        autoFixOnFormat = true,
        autoFixOnSave = true,
      },
    },
  },
}
