return {
	"nvimtools/none-ls.nvim",
    dependencies = {
      "nvimtools/none-ls-extras.nvim",
        "williamboman/mason.nvim",
    },
	config = function()
		local ns = require("null-ls")
		ns.setup({
			sources = {
				ns.builtins.formatting.stylua,
                ns.builtins.formatting.clang_format,
                ns.builtins.formatting.black,
                ns.builtins.formatting.cmake_format,
			},
		})
	end,
}
