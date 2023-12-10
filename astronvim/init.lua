return {
  colorscheme = "catppuccin",

  plugins = {
    "AstroNvim/astrocommunity",
    { import = "astrocommunity.colorscheme.rose-pine" },
    { import = "astrocommunity.colorscheme.tokyonight-nvim" },
    { import = "astrocommunity.colorscheme.kanagawa-nvim" },
    { import = "astrocommunity.colorscheme.monokai-pro-nvim" },
    { import = "astrocommunity.colorscheme.catppuccin" },
    { import = "astrocommunity.colorscheme.dracula-nvim" },
    -- { import = "astrocommunity.colorscheme.nightfox-nvim" },
    -- { import = "astrocommunity.colorscheme.onedarkpro-nvim" },
    -- { import = "astrocommunity.colorscheme.poimandres-nvim" },
    -- { import = "astrocommunity.bars-and-lines.bufferline-nvim" },
    -- { import = "astrocommunity.bars-and-lines.lualine-nvim" },
    { import = "astrocommunity.editing-support.todo-comments-nvim" },
    { import = "astrocommunity.motion.hop-nvim" },
    { import = "astrocommunity.motion.vim-matchup" },
    { import = "astrocommunity.pack.astro" },
    { import = "astrocommunity.pack.bash" },
    { import = "astrocommunity.pack.json" },
    { import = "astrocommunity.pack.markdown" },
    -- { import = "astrocommunity.pack.php" },
    { import = "astrocommunity.pack.svelte" },
    { import = "astrocommunity.pack.tailwindcss" },
    { import = "astrocommunity.pack.toml" },
    -- { import = "astrocommunity.pack.typescript" },
    { import = "astrocommunity.pack.vue" },
    { import = "astrocommunity.pack.yaml" },
    { import = "astrocommunity.scrolling.neoscroll-nvim" },
    { "rose-pine", lazy = false },
    { "tokyonight.nvim", lazy = false },
    { "monokai-pro.nvim", lazy = false },
    { "kanagawa.nvim", lazy = false },
    { "lunarvim/lunar.nvim", lazy = false },
    { "wavded/vim-stylus", lazy = false },
    { "mattn/emmet-vim", lazy = false, init = function() vim.g.user_emmet_leader_key = "<C-L>" end },
    { "tpope/vim-surround", lazy = false },
    { "tpope/vim-repeat", lazy = false },
    { "windwp/nvim-ts-autotag", lazy = false, setup = {
      autotag = {
        enable = true,
      },
    } },
    { "hhsnopek/vim-sugarss", lazy = false },
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
  },
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
