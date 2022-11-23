

local status_ok, nvim_treesitter = pcall(require, 'nvim-treesitter.configs')
if not status_ok then
  return
end

-- See: https://github.com/nvim-treesitter/nvim-treesitter#quickstart
nvim_treesitter.setup {
  -- A list of parser names, or "all"
  ensure_installed = "all",
  ignore_install = {'phpdoc'},
  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,
	indent = {
		enable = true,
	},
	-- incremental_selection = {
 --    enable = true,
 --    keymaps = {
 --      init_selection = '<CR>',
 --      scope_incremental = '<CR>',
 --      node_incremental = '<TAB>',
 --      node_decremental = '<S-TAB>',
 --      init_selection = "gnn",
 --      node_incremental = "grn",
 --      scope_incremental = "grc",
 --      node_decremental = "grm",
 --    },
 --  },
  highlight = {
    -- `false` will disable the whole extension
    enable = true,
  },
}
