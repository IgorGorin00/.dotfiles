return {
    "theprimeagen/harpoon",
    config = function()
        local mark = require("harpoon.mark")
        local ui = require("harpoon.ui")

        vim.keymap.set("n", "<leader>a", mark.add_file)
        vim.keymap.set("n", "<C-s>", ui.toggle_quick_menu)

        vim.keymap.set("n", "<leader>s", function() ui.nav_file(1) end, {noremap = true})
        vim.keymap.set("n", "<leader>e", function() ui.nav_file(2) end, {noremap = true})
        vim.keymap.set("n", "<leader>r", function() ui.nav_file(3) end, {noremap = true})
        vim.keymap.set("n", "<leader>f", function() ui.nav_file(4) end, {noremap = true})
    end
}
