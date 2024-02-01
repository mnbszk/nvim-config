return {
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup()

			vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", {})
			vim.keymap.set("n", "<leader>gt", ":Gitsigns toggle_current_line_blame<CR>", {})
		end,
	},
	{
		"tpope/vim-fugitive",
		config = function()
			vim.keymap.set("n", "<leader>ga", ":Git add %:p<CR><CR>", {})
			vim.keymap.set("n", "<leader>gs", ":Git status<CR>", {})
			vim.keymap.set("n", "<leader>gc", ":Git commit -v -q<CR>", {})
		end,
	},
}
