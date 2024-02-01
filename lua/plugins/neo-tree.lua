return {
    "nvim-neo-tree/neo-tree.nvim",
    enabled = false,
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    config = function()
        require("neo-tree").setup({
            close_if_last_window = true,
            window = {
                mappings = {
                    ["o"] = "open",
                }
            },
        })

        vim.keymap.set('n', '<leader>n', ':Neotree filesystem reveal left<CR>')

        -- vim.api.nvim_create_augroup("neotree", {})
        -- vim.api.nvim_create_autocmd("VimEnter", {
        --     desc = "Open Neotree automatically",
        --     group = "neotree",
        --     callback = function()
        --         if vim.fn.argc() == 0 then
        --             vim.cmd "Neotree toggle"
        --         end
        --     end
        -- })
    end
}
