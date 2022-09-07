local utils = {}

utils.keymap = function(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then options = vim.tbl_extend("force", options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

utils.exec = function(command) vim.api.nvim_exec(command, false) end
