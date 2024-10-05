return {
    'vim-skk/eskk.vim',
    config = function()
        vim.g['eskk#directory'] = '~/.config/eskk'
        vim.g['eskk#dictionary'] = { path = '~/.config/eskk/eskk_jisyo', sorted = 1, encoding = 'utf-8' }
        vim.g['eskk#large_dictionary'] = { path = '~/.config/eskk/SKK-JISYO.L', sorted = 1, encoding = 'euc-jp' }
        vim.g['eskk#egg_like_newline'] = 1
        vim.g['eskk#auto_save_dictionary_at_exit'] = 1
    end,
}
