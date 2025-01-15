-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  -- import/override with your plugins folder
  -- { import = "astrocommunity.bars-and-lines.lualine-nvim" },
  -- { import = "astrocommunity.pack.bash" },
  -- { import = "astrocommunity.pack.vue" },
  -- { import = "astrocommunity.pack.astro" },
  -- { import = "astrocommunity.pack.tailwindcss" },
  { import = "astrocommunity.color.nvim-highlight-colors" },
  { import = "astrocommunity.editing-support.todo-comments-nvim" },
  { import = "astrocommunity.motion.hop-nvim" },
  { import = "astrocommunity.motion.vim-matchup" },
  { import = "astrocommunity.scrolling.neoscroll-nvim" },
  { import = "astrocommunity.pack.html-css" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.php" },
  { import = "astrocommunity.pack.svelte" },
  -- { import = "astrocommunity.pack.yaml" },
  -- { import = "astrocommunity.pack.typescript" },
  -- { import = "astrocommunity.pack.toml" },
}
