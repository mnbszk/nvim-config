return {
    "nvim-lualine/lualine.nvim",
    config = function()
        local function skkmode()
            if vim.call('eskk#is_enabled') == 1 then
                return vim.g['eskk#statusline_mode_strings'][vim.call('eskk#get_mode')]
            else
                return ''
            end
        end
        vim.api.nvim_create_autocmd('user', {
            pattern = 'eskk-initialize-post',
            callback = function()
                require('lualine').setup({
                    sections = {
                        lualine_a = { 'filename', skkmode },
                    },
                })
            end,
        })
        require('lualine').setup({
            options = {
                theme = 'OceanicNext'
            }
        })
    end
}
