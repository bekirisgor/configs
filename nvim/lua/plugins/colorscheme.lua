vim.o.termiguicolors = true
local catppuccin = require("catppuccin")
require("tokyonight").setup({
	-- your configuration comes here
	-- or leave it empty to use the default settings
	style = "night", -- The theme comes in three styles, `storm`, a darker variant `night` and `day`
	transparent = true, -- Enable this to disable setting the background color
	terminal_colors = false, -- Configure the colors used when opening a `:terminal` in Neovim
	styles = {
		-- Style to be applied to different syntax groups
		-- Value is any valid attr-list value `:help attr-list`
		-- comments = "italic",
		-- keywords = "italic",
		-- functions = "NONE",
		-- variables = "NONE",
		-- -- Background styles. Can be "dark", "transparent" or "normal"
		-- sidebars = "dark", -- style for sidebars, see below
		-- floats = "dark", -- style for floating windows
	},
	-- sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
	day_brightness = 0.2, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
	-- hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
	-- dim_inactive = false, -- dims inactive windows
	-- lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold

	--- You can override specific color groups to use other groups or a hex color
	--- fucntion will be called with a ColorScheme table
	-- -@param colors ColorScheme
	-- on_colors = function(colors) end,

	--- You can override specific highlights to use other groups or a hex color
	--- fucntion will be called with a Highlights and ColorScheme table
	-- -@param highlights Highlights
	-- -@param colors ColorScheme
	-- on_highlights = function(highlights, colors) end,
})

-- vim.api.nvim_command('colorscheme catppuccin')

-- vim.g.catppuccin_flavour = "mocha"
-- catppuccin.setup({
-- 	transparent_background = true,
-- 	term_colors = true,
-- 	--[[ dim_inactive = {
-- 		enabled = true,
-- 		shade = "dark",
-- 		percentage = 0.15,
-- 	}, ]]
-- 	compile = {
-- 		enabled = true,
-- 		path = vim.fn.stdpath("cache") .. "/catppuccin",
-- 	},
-- 	integrations = {
-- 		gitsigns = true,
-- 		hop = false,
-- 		cmp = true,
-- 		nvimtree = { enabled = true, show_root = true, transparent_panel = true },
-- 		telescope = true,
-- 		native_lsp = {
-- 			enabled = true,
-- 		},
-- 	},
--
-- 	custom_highlights = {
-- 		DiagnosticVirtualTextError = { bg = "NONE" },
-- 		DiagnosticVirtualTextWarn = { bg = "NONE" },
-- 		DiagnosticVirtualTextInfo = { bg = "NONE" },
-- 		DiagnosticVirtualTextHint = { bg = "NONE" },
-- 		-- TSVariable = { fg = "#dcf5e5" },
-- 	},
-- 	color_overrides = {
-- 		mocha = {
-- 			-- yellow = "#F9E2AF",
-- 			-- green = "#A6E3A1",
-- 			-- teal = "#e1eaf5",
-- 			-- sky = "#89DCEB",
-- 			-- sapphire = "#f78f6d",
-- 		},
-- 	},
-- })

require('rose-pine').setup({
	--- @usage 'main' | 'moon'
	dark_variant = 'main',
	bold_vert_split = false,
	dim_nc_background = false,
	disable_background = false,
	disable_float_background = false,
	disable_italics = false,

	--- @usage string hex value or named color from rosepinetheme.com/palette
	groups = {
		background = 'base',
		panel = 'surface',
		border = 'highlight_med',
		comment = 'muted',
		link = 'iris',
		punctuation = 'subtle',

		error = 'love',
		hint = 'iris',
		info = 'foam',
		warn = 'gold',

		headings = {
			h1 = 'iris',
			h2 = 'foam',
			h3 = 'rose',
			h4 = 'gold',
			h5 = 'pine',
			h6 = 'foam',
		}
		-- or set all headings at once
		-- headings = 'subtle'
	},

	-- Change specific vim highlight groups
	highlight_groups = {
		ColorColumn = { bg = 'rose' }
	}
})

-- set colorscheme after options
vim.cmd('colorscheme rose-pine')

-- vim.cmd("colorscheme catppuccin")

--
--vim.cmd([[colorscheme catppuccin]])
