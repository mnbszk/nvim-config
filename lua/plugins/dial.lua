return {
    "monaqa/dial.nvim",
    event = "BufRead",
    config = function()
        local augend = require("dial.augend")
        require("dial.config").augends:register_group{
            default = {
                augend.integer.alias.decimal,
                augend.integer.alias.hex,
                augend.constant.alias.bool,
                augend.constant.alias.ja_weekday,
                augend.constant.alias.ja_weekday_full,
                augend.date.new {
                    pattern = "%Y/%m/%d",
                    default_kind = "day",
                },
            },
        }
        vim.keymap.set("n", "<C-a>", function()
            require("dial.map").manipulate("increment", "normal")
        end)
        vim.keymap.set("n", "<C-x>", function()
            require("dial.map").manipulate("decrement", "normal")
        end)
    end,
}
