return {
    {
	"nvim-treesitter/nvim-treesitter", 
	build = ":TSUpdate",
	config = function ()
		local configs = require("nvim-treesitter.configs")
		
		configs.setup({
            auto_install = true,   
            ensure_installed = { "c", "cpp", "python", "csv", "cmake", "make", "yaml", "toml", "rust","lua", "vim", "vimdoc", "query", "markdown", "markdown_inline" },
            sync_install = false,
            highlight = {enable = true},
            indent = {enable = true},
		})
	end
}
}
