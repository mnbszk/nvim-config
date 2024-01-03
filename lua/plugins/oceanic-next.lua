-- OceanicNext colorscheme
-- https://github.com/mhartington/oceanic-next
return {
    "mhartington/oceanic-next",
    config = function()
        vim.cmd.colorscheme "OceanicNext"
        vim.cmd("hi Normal guibg=NONE ctermbg=NONE")
        vim.cmd("hi LineNr guibg=NONE ctermbg=NONE")
        vim.cmd("hi SignColumn guibg=NONE ctermbg=NONE")
        vim.cmd("hi EndOfBuffer guibg=NONE ctermbg=NONE")
    end
}

