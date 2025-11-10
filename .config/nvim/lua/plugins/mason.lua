return {
    'mason-org/mason.nvim',
    build = ':MasonUpdate',
    config = function()
	local ok, mason = pcall(require, 'mason')
	if not ok then return end

	mason.setup({
	    PATH = "prepend",
	    log_level = vim.log.levels.INFO,
	    max_concurrent_installers = 4,
	    ui = {
		icons = {
		    package_installed = '✓',
		    package_pending = '➜',
		    package_uninstalled = '✗',
		}
	    }
	})
    end
}
