return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
	local telescope = require('telescope')
	telescope.setup{}

	local builtin = require('telescope.builtin')
	local opts = { noremap = true, silent = true }

	vim.keymap.set("n", "<leader>pf", builtin.find_files, opts)
	vim.keymap.set("n", "<leader>pg", builtin.git_files, opts)
	vim.keymap.set("n", "<leader>ps", function()
	    builtin.grep_string({ search = vim.fn.input('Grep > ') })
	end, opts)
    end
}
