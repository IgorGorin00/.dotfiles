return {
    {
        "nvim-lua/plenary.nvim",
        name = "plenary"
    },
    
    {
        "folke/trouble.nvim",
        config = function()
            require("trouble").setup {
                icons = false
            }
        end
    },
    
    "folke/zen-mode.nvim",
    "Eandrju/cellular-automaton.nvim",
}
