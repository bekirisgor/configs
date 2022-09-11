local autopair = require("nvim-autopairs")
autopair.setup({
	check_ts = true,
})
autopair.add_rules(require("nvim-autopairs.rules.endwise-lua"))
