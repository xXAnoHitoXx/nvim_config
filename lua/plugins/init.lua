return {
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.4',
        -- or                            , branch = '0.1.x',
        dependencies = { {'nvim-lua/plenary.nvim'} }
    },

    'nvim-tree/nvim-web-devicons',
    'nvim-tree/nvim-tree.lua',
    'famiu/feline.nvim',
    "folke/tokyonight.nvim",
    'tpope/vim-fugitive',

    {
        'laytan/tailwind-sorter.nvim',
        dependencies = {'nvim-treesitter/nvim-treesitter', 'nvim-lua/plenary.nvim'},
        build = 'cd formatter && npm ci && npm run build',
        config = true,
    },
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        dependencies = {
            --- Uncomment these if you want to manage LSP servers from neovim
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- LSP Support
            {'neovim/nvim-lspconfig'},
            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'L3MON4D3/LuaSnip'},
        }
    },

    'mfussenegger/nvim-dap',
    {
        'rcarriga/nvim-dap-ui',
        dependencies = {'mfussenegger/nvim-dap', 'nvim-neotest/nvim-nio'},
    },

    'theHamsta/nvim-dap-virtual-text',

    {
        'rust-lang/rust.vim',
        ft = "rust",
        init = function()
            vim.g.rustfmt_autosave = 1
        end
    },

    {
        "simrat39/rust-tools.nvim",
        ft = "rust",
        dependencies = "neovim/nvim-lspconfig",
        config = function()
            local rt = require('rust-tools')
            rt.setup({
                server = {
                    on_attach = function(_, bufnr)
                        -- Hover actions
                        vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
                        -- Code action groups
                        vim.keymap.set("n", "<Leader>cca", rt.code_action_group.code_action_group, { buffer = bufnr })
                    end,
                    settings = {
                        ['rust-analyzer'] = {
                            check = {
                                command = 'clippy'
                            }
                        }
                    }
                }
            })
        end,
    },
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function ()
            local configs = require("nvim-treesitter.configs")
            configs.setup({
                ensure_installed = { "typescript", "css", "lua", "vim", "vimdoc", "gdscript", "godot_resource", "rust" },
                sync_install = false,
                highlight = { enable = true },
                indent = { enable = true },
                rainbow = { enable = false },
            })
        end
    },
    'theprimeagen/harpoon',
    'mfussenegger/nvim-lint',
    'BurntSushi/ripgrep',
    'sharkdp/fd',
    {
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        ft = { "markdown" },
        build = function() vim.fn["mkdp#util#install"]() end,
    },
    "karb94/neoscroll.nvim",
}

