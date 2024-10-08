return {
    'lewis6991/gitsigns.nvim',
    opts = {},
    keys = {
        { '<leader>hs', require('gitsigns').stage_hunk },
        { '<leader>hr', require('gitsigns').reset_hunk },
        { '<leader>hp', require('gitsigns').preview_hunk_inline, desc = "Preview hunk inline" },
        { '<leader>hd', require('gitsigns').diffthis },
    },
}
