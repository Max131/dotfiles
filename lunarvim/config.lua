-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Example configs: https://github.com/LunarVim/starter.lvim
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
-- vim options
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.relativenumber = false
vim.opt.termguicolors = true

-- general
lvim.log.level = "info"
lvim.format_on_save = {
  enabled = true,
  timeout = 500,
}

lvim.leader = "space"

-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["<S-h>"] = ":bprev<CR>"
lvim.keys.normal_mode["<S-l>"] = ":bnext<CR>"
lvim.keys.normal_mode["<A-Up>"] = ":m.-2<CR>"
lvim.keys.normal_mode["<A-Down>"] = ":m.+1<CR>"
lvim.keys.insert_mode["clg"] = "console.log()<left>"
lvim.keys.normal_mode["<A-Left>"] = ":BufferLineMovePrev<CR>"
lvim.keys.normal_mode["<A-Right>"] = ":BufferLineMoveNext<CR>"

-- -- Additional Plugins <https://www.lunarvim.org/docs/plugins#user-plugins>
lvim.plugins = {

  { "wavded/vim-stylus" },
  {
    "mattn/emmet-vim",
    init = function()
      vim.g.user_emmet_leader_key = "<C-L>"
    end
  },
  { "tpope/vim-repeat" },
  { "tpope/vim-surround" },
  {
    "andymass/vim-matchup",
    init = function()
      vim.g.matchup_matchparen_offscreen = { method = "popup" }
    end
  },
  {
    "mrjones2014/nvim-ts-rainbow",
  },
  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup({ "css", "scss", "html", "javascript", "stylus", "svelte", "pug" }, {
        RGB = true,      -- #RGB hex codes
        RRGGBB = true,   -- #RRGGBB hex codes
        RRGGBBAA = true, -- #RRGGBBAA hex codes
        rgb_fn = true,   -- CSS rgb() and rgba() functions
        hsl_fn = true,   -- CSS hsl() and hsla() functions
        css = true,      -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
        css_fn = true,   -- Enable all CSS *functions*: rgb_fn, hsl_fn
      })
    end,
  },
  {
    "ethanholz/nvim-lastplace",
    event = "BufRead",
    config = function()
      require("nvim-lastplace").setup({
        lastplace_ignore_buftype = { "quickfix", "nofile", "help" },
        lastplace_ignore_filetype = {
          "gitcommit", "gitrebase", "svn", "hgcommit",
        },
        lastplace_open_folds = true,
      })
    end,
  },
  {
    "phaazon/hop.nvim",
    event = "BufRead",
    config = function()
      require("hop").setup()
      vim.api.nvim_set_keymap("n", "s", ":HopChar2<cr>", { silent = true })
      vim.api.nvim_set_keymap("n", "S", ":HopWord<cr>", { silent = true })
    end,
  },
  {
    "folke/todo-comments.nvim",
    event = "BufRead",
    config = function()
      require("todo-comments").setup()
    end,
  },
  -- themes
  -- { "dracula/vim" },
  -- { "rose-pine/neovim" },
  -- { "folke/tokyonight.nvim" },
  -- { "EdenEast/nightfox.nvim" },
  -- {
  --   "catppuccin/nvim",
  --   name = "catppuccin"
  -- }
  { "olimorris/onedarkpro.nvim" },
  { "loctvl842/monokai-pro.nvim" },
  { "windwp/nvim-ts-autotag", },
}

require("nvim-ts-autotag").setup()
lvim.builtin.bufferline.options.indicator.style = "underline"
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.treesitter.auto_install = true
lvim.builtin.treesitter.matchup.enable = true
lvim.builtin.telescope.defaults.layout_config.width = 0.95
lvim.builtin.telescope.defaults.layout_config.height = 0.95
lvim.builtin.telescope.defaults.layout_config.prompt_position = "top"
lvim.builtin.telescope.defaults.layout_strategy = "horizontal"
lvim.builtin.treesitter.autotag = {
  enable = false
}
lvim.builtin.telescope.defaults.file_ignore_patterns = {
  "%.webp$",
  "%.jpg$",
  "%.jpeg$",
  "%.png$",
  "%.bak$",
  "node_modules"
}

-- keybindings example
lvim.lsp.buffer_mappings.normal_mode["gr"] = {
  "<cmd>Telescope lsp_references<CR>", "Go References"
}
lvim.builtin.which_key.mappings["gr"] = {
}
lvim.builtin.which_key.mappings["f"] = {
  name = "Find",
  f = { "<cmd>Telescope find_files<cr>", "Files" },
  o = { "<cmd>Telescope oldfiles<cr>", "Recent files" },
  w = { "<cmd>Telescope live_grep<cr>", "Live grep" },
  i = { "<cmd>Telescope current_buffer_fuzzy_find<cr>", "In buffer" }
}
-- lvim.builtin.lualine.style = "default"

lvim.colorscheme = "onedark"

local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  { command = "eslint",    filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact", "svelte", "vue", "jsx" } },
  { command = "stylelint", filetypes = { "css", "scss", "sugarcss", "stylus", "postcss" } }
}
