return {

 { "wavded/vim-stylus", lazy = false },
 { "folke/tokyonight.nvim", lazy = false },
 { "mattn/emmet-vim", lazy = false, 
    init = function ()
     vim.g.user_emmet_leader_key = "<C-L>"
    end
 },
 { "tpope/vim-surround", lazy = false },
 { "tpope/vim-repeat", lazy = false }, 
 {
     "andymass/vim-matchup", lazy = false,
     init = function()
         vim.g.matchup_matchparen_offscreen = { method = "popup" }
         vim.g.loaded_matchit = 1
     end
 }
}
