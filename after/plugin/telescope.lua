local telescope = require('telescope')

telescope.setup{
    defaults = {
        file_ignore_patterns = {
            "[.]git",
            "[.]godot",
            ".*[.]png.*",
            ".*[.]svg.*",
            "addons.*[.]cfg"
        }
    }
}

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>f', builtin.find_files, {})
vim.keymap.set('n', '<leader><leader>f', builtin.live_grep, {})
