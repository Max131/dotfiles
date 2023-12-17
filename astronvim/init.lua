return {
  plugins = {
    "AstroNvim/astrocommunity",
    { import = "astrocommunity.colorscheme.rose-pine" },
    { import = "astrocommunity.colorscheme.tokyonight-nvim" },
    { import = "astrocommunity.colorscheme.monokai-pro-nvim" },
    { import = "astrocommunity.colorscheme.catppuccin" },
    { import = "astrocommunity.editing-support.todo-comments-nvim" },
    { import = "astrocommunity.motion.hop-nvim" },
    { import = "astrocommunity.motion.vim-matchup" },
    { import = "astrocommunity.pack.astro" },
    { import = "astrocommunity.pack.bash" },
    { import = "astrocommunity.pack.json" },
    { import = "astrocommunity.pack.markdown" },
    { import = "astrocommunity.pack.php" },
    { import = "astrocommunity.pack.svelte" },
    { import = "astrocommunity.pack.tailwindcss" },
    { import = "astrocommunity.pack.toml" },
    { import = "astrocommunity.pack.typescript" },
    { import = "astrocommunity.pack.vue" },
    { import = "astrocommunity.pack.yaml" },
    { import = "astrocommunity.scrolling.neoscroll-nvim" },
    { "rose-pine",                                                 lazy = false },
    { "catppuccin",                                                 lazy = false },
    { "tokyonight.nvim",                                           lazy = false },
    { "monokai-pro.nvim",                                          lazy = false },
    { "wavded/vim-stylus",                                         lazy = false },
    {
      "mattn/emmet-vim",
      lazy = false,
      init = function()
        vim.g.user_emmet_leader_key =
        "<C-L>"
      end
    },
    { "tpope/vim-surround", lazy = false },
    { "tpope/vim-repeat",   lazy = false },
    {
      "nvim-telescope/telescope.nvim",
      opts = {
        defaults = {
          file_ignore_patterns = {
            "%.webp$",
            "%.png$",
            "%.jpg$",
            "%.jpeg$",
            "%.obj$",
          },
        },
      },
    },
    {
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
          sass = { enable = true, parsers = { "css" }, },
        }
      }
    }
  },
}
