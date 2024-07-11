return {
  "NvChad/nvim-colorizer.lua",
  opts = {
    filetypes = { "*" },
    user_default_options = {
      names = true,
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
