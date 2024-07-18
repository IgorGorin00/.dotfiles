vim.o.clipboard = "unnamedplus"

vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)


vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")



vim.keymap.set("n", "Q", "<nop>")

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lprev<CR>zz")


vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- enable tmux navigation in normal mode
vim.keymap.set("n", "<C-h>", "<cmd> TmuxNavigateLeft<CR>", {noremap = true})
vim.keymap.set("n", "<C-l>", "<cmd> TmuxNavigateRight<CR>", {noremap = true})
vim.keymap.set("n", "<C-j>", "<cmd> TmuxNavigateDown<CR>", {noremap = true})
vim.keymap.set("n", "<C-k>", "<cmd> TmuxNavigateUp<CR>", {noremap = true})
