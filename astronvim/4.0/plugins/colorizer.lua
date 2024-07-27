return {
  "NvChad/nvim-colorizer.lua",
  enabled = false,
  opts = {
    filetypes = { "*" },
    user_default_options = {
      names = true,
      RGB = true,
      RRGGBB = true,
      RRGGBBAA = true,
      rgb_fn = true,
      hsl_fn = true,
      css = true,
      css_fn = true,
      tailwind = true,
      sass = { enable = true, parsers = { "css" } },
    },
  },
}
