return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        -- nvim-tree setup
        -- disable netrw at the very start of your init.lua
        vim.g.loaded_netrw = 1
        vim.g.loaded_NetrwPlugin = 1

        -- set termguicolors to enable highlight groups
        vim.opt.termguicolors = true

        require("nvim-web-devicons").setup({})
        require("nvim-web-devicons").get_icons()

        -- setup with some options
        require("nvim-tree").setup({
            sort = { sorter = "case_sensitive" },
            view = { width = 30 },
            renderer = {
                indent_markers = {
                    enable = true,
                },
                highlight_opened_files = "name",
                highlight_git = true,
                highlight_modified = "icon",
                icons = {
                    show = {
                        folder_arrow = false,
                        git = true,
                        modified = true,
                        diagnostics = true,
                        bookmarks = true,
                    },
                    git_placement = "signcolumn",
                    modified_placement = "signcolumn",
                    glyphs = {
                        git = {
                            unstaged = "!",
                            renamed = "»",
                            untracked = "?",
                            deleted = "✘",
                            staged = "✓",
                            unmerged = "",
                            ignored = "◌",
                        },
                    },
                },
            },
            modified = {
                enable = true,
                show_on_dirs = true,
                show_on_open_dirs = true,
            },
            diagnostics = {
                enable = true,
                show_on_open_dirs = true,
            },
            filters = { dotfiles = true },
        })
        -- start neovim with open nvim-tree
        require("nvim-tree.api").tree.toggle(false, true)

        -- nvim-tree
        vim.keymap.set("n", "<leader>n", ":NvimTreeToggle<CR>")
        vim.keymap.set("n", "<leader>1", ":NvimTreeFindFile<CR>")
    end,
}
