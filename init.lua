-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end

vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "

require('lazy').setup('plugins')

local api = require('nvim-tree.api')

require("nvim-tree").setup({
    on_attach = function ()
        vim.keymap.set("n", "<leader>at", function ()
            api.tree.toggle({find_file = true})
        end)
        vim.keymap.set("n", "<leader>al", api.tree.reload)
        vim.keymap.set("n", "<leader>ar", api.fs.rename)
        vim.keymap.set("n", "<leader>ad", api.fs.remove)
        vim.keymap.set("n", "<leader>ax", api.fs.cut)
        vim.keymap.set("n", "<leader>ap", api.fs.paste)
        vim.keymap.set("n", "<leader>an", api.node.navigate.diagnostics.next)
        vim.keymap.set("n", "<leader>ae", api.node.navigate.diagnostics.prev)
        vim.keymap.set("n", "<leader>ac", api.tree.collapse_all)
        vim.keymap.set("n", "<leader>ag", api.tree.toggle_gitignore_filter)
        vim.keymap.set("n", "<CR>", api.node.open.edit)
        vim.keymap.set("n", "%", api.fs.create)
    end,

    sort = {
        sorter = "case_sensitive",
    },

    view = {
        width = 30,
    },

    renderer = {
        group_empty = true,
    },

    diagnostics = {
        enable = true,
        show_on_dirs = true,
    },

    filters = {
        custom = {"^.git$"}
    },
})

require('neoscroll').setup({
    mappings = {},
})

local t = {}
-- Syntax: t[keys] = {function, {function arguments}}
t['<C-c>'] = {'scroll', {'-vim.wo.scroll', 'true', '70'}}
t['<C-d>'] = {'scroll', { 'vim.wo.scroll', 'true', '70'}}

require('neoscroll.config').set_mappings(t)

require("anohito")
print("Ocha no junbi ga dekimashita.")
