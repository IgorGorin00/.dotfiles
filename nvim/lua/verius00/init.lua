require("verius00.remap")
require("verius00.set")
require("verius00.lazy_init")


local augroup = vim.api.nvim_create_augroup
local my_group = augroup("my_group", {})

local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup("HighlightYank", {})


autocmd("Lspattach", {
    group = my_group,
    callback = function(ev)
        local opts = { buffer = ev.buf }

        vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
        vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
        vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
        vim.keymap.set("n", "<leader>[d", function() vim.diagnostic.goto_next() end, opts)
        vim.keymap.set("n", "<leader>[d", function() vim.diagnostic.goto_prev() end, opts)
        vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
        vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
        vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
        vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
        vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)

    end
})
