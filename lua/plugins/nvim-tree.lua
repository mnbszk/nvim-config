local function my_on_attach(bufnr)
    local api = require("nvim-tree.api")

    local function opts(desc)
        return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
    end

    -- defualt mappings
    api.config.mappings.default_on_attach(bufnr)

    -- custom mappings
    vim.keymap.set('n', '<C-t>', api.tree.change_root_to_parent, opts('Up'))
    vim.keymap.set('n', '.',     api.tree.change_root_to_node,   opts('CD'))
    vim.keymap.set('n', '?',     api.tree.toggle_help,           opts('Help'))
end

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

        vim.opt.termguicolors = true

        require("nvim-web-devicons").setup({})
        require("nvim-web-devicons").get_icons()

        -- setup with some options
        require("nvim-tree").setup({
            on_attach = my_on_attach,
            sort = { sorter = "case_sensitive" },
            view = { width = 30 },
            renderer = {
                indent_markers = { enable = true },
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
            }
        })
        -- start neovim with open nvim-tree
        -- require("nvim-tree.api").tree.toggle(false, true)

        vim.keymap.set('n', '<leader>n', ':NvimTreeToggle<CR>')
        vim.keymap.set('n', '<leader>1', ':NvimTreeFindFile<CR>')
    end
}
