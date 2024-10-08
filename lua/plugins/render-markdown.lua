return {
    'MeanderingProgrammer/render-markdown.nvim',
    ft = { 'markdown', 'quarto' },
    dependencies = {
        'nvim-treesitter/nvim-treesitter',
        'echasnovski/mini.nvim'
    },
    config = function()
        require('render-markdown').setup({
            enabled = true,
            render_modes = true,
            pipe_table = {
                enabled = true,
                preset = 'round',
                style = 'full',
                cell = 'trimmed',
                min_width = 5,
                head = 'RenderMarkdownTableHead',
                row = 'RenderMarkdownTableRow',
                filler = 'RenderMarkdownTableFill',
            }
        })
    end,
    opts = {},
}
