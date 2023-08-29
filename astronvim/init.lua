return {
  -- colorscheme = "rose-pine-main",

  plugins = {
    "AstroNvim/astrocommunity",
    -- { import = "astrocommunity.colorscheme.rose-pine" },
    { import = "astrocommunity.bars-and-lines.bufferline-nvim" },
    { import = "astrocommunity.bars-and-lines.lualine-nvim" },
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
    -- { "rose-pine", lazy = false },
    { "wavded/vim-stylus",                                         lazy = false },
    {
      "mattn/emmet-vim",
      lazy = false,
      init = function()
        vim.g.user_emmet_leader_key = "<C-L>"
      end,
    },
    { "tpope/vim-surround", lazy = false },
    { "tpope/vim-repeat",   lazy = false },
  },
}
