return {
  "astrocore/astrocore",
  ---@type AstroCoreOpts
  opts = {
    mappings = {
      n = {
        ["<C-Left>"] = false,
        ["<C-Right>"] = false,
        ["<A-Up>"] = { ":m.-2<CR>" },
        ["<A-Down>"] = { ":m.+1<CR>" },
        -- ["<S-l>"] = {
        --   function() require("astrocore.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
        --   desc = "Next buffer",
        -- },
        ["<S-l>"] = {
          function() require("astrocore.buffer").nav(1) end,
          desc = "Next buffer",
        },
        ["<S-h>"] = {
          function() require("astrocore.buffer").nav(-1) end,
          desc = "Previous buffer",
        },
        ["<C-PageDown>"] = {
          function() require("astrocore.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
          desc = "Next buffer",
        },
        ["<C-PageUp>"] = {
          function() require("astrocore.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
          desc = "Previous buffer",
        },
        [">b"] = {
          function() require("astrocore.buffer").move(vim.v.count > 0 and vim.v.count or 1) end,
          desc = "Move buffer tab right",
        },
        ["<b"] = {
          function() require("astrocore.buffer").move(-(vim.v.count > 0 and vim.v.count or 1)) end,
          desc = "Move buffer tab left",
        },
      },
      i = {
        ["clg"] = { "console.log()<ESC><Left>a", desc = "Console.log" },
      },
    },
  },
}
