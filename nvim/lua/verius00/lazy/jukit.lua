function Activate_r()
    vim.g.jukit_shell_cmd = 'R'
    print('Switched to R')
end

-- Function to set the shell command to IPython3
function Activate_py()
    vim.g.jukit_shell_cmd = 'ipython3'
    print('Switched to IPython3')
end

function Activate_horizontal()
    vim.api.nvim_set_keymap('n', '<C-[>', ':vertical resize -2<CR>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', '<C-]>', ':vertical resize +2<CR>', { noremap = true, silent = true })
    command = [[ let g:jukit_layout = { 'split': 'horizontal', 'p1': 0.6, 'val': [ 'file_content', { 'split': 'vertical', 'p1': 0.6, 'val': ['output', 'output_history'] } ] }]]
    vim.cmd(command)
end

function Activate_vertical()
    vim.api.nvim_set_keymap('n', '<C-[>', ':horizontal resize -2<CR>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', '<C-]>', ':horizontal resize +2<CR>', { noremap = true, silent = true })
    command = [[ let g:jukit_layout = { 'split': 'vertical', 'p1': 0.7, 'val': [ 'file_content', { 'split': 'horizontal', 'p1': 0.6, 'val': ['output', 'output_history'] } ] }]]
    print("vertical split activated")
    vim.cmd(command)
end

return {
    "luk400/vim-jukit",
    confing = function()
        -- Enable vim-jukit
        vim.g.jukit_mappings_ext = '.ipynb'
        -- Set the markers for the cells
        vim.g.jukit_split = 1
        vim.g.jukit_cell_marker = '#|%%--%%|'

        vim.g.python3_host_prog = '/usr/bin/python3'
        vim.g.jukit_shell_cmd = 'ipython3'
        vim.g.jukit_terminal = ''
        vim.g.jukit_auto_output_hist = 0
        vim.g.jukit_use_tcomment = 0
        vim.g.jukit_comment_mark = '#'
        vim.g.jukit_mappings = 1
        vim.g.jukit_mappings_ext_enabled = "*"
        vim.g.jukit_notebook_viewer = 'jupyter-notebook'
        vim.g.jukit_convert_overwrite_default = -1
        vim.g.jukit_convert_open_default = -1
        vim.g.jukit_file_encodings = 'utf-8'
        vim.g.jukit_venv_in_output_hist = 1
        Activate_vertical()
        -- Define functions to switch between Python and R
    end
}


