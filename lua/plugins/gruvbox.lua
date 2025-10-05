return {
	{
		"ellisonleao/gruvbox.nvim",
		priority = 0,
		config = function()
			require("gruvbox").setup({
				terminal_colors = true, -- add neovim terminal colors
				undercurl = true,
				underline = true,
				bold = true,
				italic = {
					strings = true,
					emphasis = true,
					comments = true,
					operators = false,
					folds = true,
				},
				strikethrough = true,
				invert_selection = false,
				invert_signs = false,
				invert_tabline = false,
				invert_intend_guides = false,
				inverse = true, -- invert background for search, diffs, statuslines and errors
				contrast = "hard", -- can be "hard", "soft" or empty string
				palette_overrides = {},
				dim_inactive = false,
				transparent_mode = false,

               -- overrides = {
               --     Function = {fg = "#d79921"},
               --     ["@function"] = {fg = "#d79921"},
               --     ["@function.call"] = {fg = "#d79921"},

               --     ["@method"] = {fg = "#fabd2f" },
               --     ["@method.call"] = {fg = "#fabd2f"},

               -- },
			})
			-- vim.cmd("colorscheme gruvbox")
		end,
	},
}
