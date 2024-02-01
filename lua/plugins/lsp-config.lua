return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup({})
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        lazy = false,
        opts = {
            auto_install = true
        },
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "lua_ls",
                    "gopls",
                    "tsserver",
                }
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        lazy = false,
        config = function()
            local capabilities = require("cmp_nvim_lsp").default_capabilities()

            local lspconfig = require("lspconfig")
            local util = require("lspconfig/util")
            lspconfig.lua_ls.setup({
                capabilities = capabilities
            })
            lspconfig.gopls.setup({
                capabilities = capabilities,
                cmd = { "gopls" },
                filetypes = { "go", "gomod", "gowork", "gotmpl" },
                root_dir = util.root_pattern("go.work", "go.mod", ".git"),
                settings = {
                    gopls = {
                        completeUnimported = true,
                        usePlaceholders = true,
                        analyses = {
                            unusedparams = true,
                        },
                    },
                },
            })
            lspconfig.tsserver.setup({
                capabilities = capabilities,
            })
            lspconfig.jdtls.setup({
                capabilities = capabilities,
                -- cmd = {
                --     -- command configuration
                -- },
                -- settings = {
                --     -- settings configuration
                -- },
                init_options = {
                    bundles = {
                        "/home/manabu/.m2/repository/com/microsoft/java/com.microsoft.java.debug.plugin/0.50.0/com.microsoft.java.debug.plugin-0.50.0.jar"
                    }
                },
                on_attach = function(client, bufnr)
                    require('jdtls').setup_dap({ hotcodereplace = 'auto' })
                end
            })
            -- lspconfig.html.setup({
            --     capabilities = capabilities
            -- })

            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, {})
            vim.keymap.set('n', '<leader>gr', vim.lsp.buf.references, {})
            vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
        end
    }
}
