
function ColorMyPencils(color)
    color = color or "midnight"
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none"})
    vim.api.nvim_set_hl(0, 'WinSeparator', { fg = '#ff00ff', bold = true })
    vim.api.nvim_set_hl(0, "winseparator", { fg = "#320259"})
    vim.api.nvim_set_hl(0, "StatusLine", { fg = "#f3f3f3", bg = "#320259"})
    vim.api.nvim_set_hl(0, "StatusLineNC", { fg = "#000000", bg = "#320259"})
end

return {
	'dasupradyumna/midnight.nvim',
	name = 'midnight',
    config = function()
        vim.cmd('colorscheme midnight')
        ColorMyPencils()
    end
}

