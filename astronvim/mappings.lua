return {
  n = {
      ["<C-Left>"] = false,
      ["<C-Right>"] = false,
      ["<A-Up>"] = { ":m.-2<CR>" },
      ["<A-Down>"] = { ":m.+1<CR>" },
      ["<S-l>"] = { function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end, desc = "Next buffer" },
      ["<S-h>"] = {  function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end, desc = "Previous buffer" }
    },
  i = {
      ["clg"] = { "console.log()<ESC><Left>a", desc = "Console.log" },
  },
}

-- maps.n["<S-l>"] = { function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end, desc = "Next buffer" },
-- maps.n["<S-h>"] = { function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end, desc = "Previous buffer" }



