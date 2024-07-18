return {
    "luk400/vim-jukit",
    confing = function()
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
    end
}

