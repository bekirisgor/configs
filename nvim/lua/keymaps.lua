local utils = require("utils")
local map = utils.keymap

vim.g.mapleader = " "
map("n", "<space>", "<nop>")

map("n", "<leader>v", ":e ~/.config/nvim/init.lua<CR>")

map("n", "<leader>h", ":nohlsearch<cr>")
map("n", "<leader>j", "<C-^>")


-- open new file adjancet to current file - jonhoo
 map('n', '<leader>o',':e <C-R>=expand("%:p:h") . "/" <CR>')
 map('', '<leader>c', ':w !pbcopy -ib<cr><cr>')
 map('', '<leader>u', ':read !pbpaste --clipboard --output<cr>')


map("n", ";", ":")

-- Better navigation
map("n", "<C-J>", "<C-W>j")
map("n", "<C-K>", "<C-W>k")
map("n", "<C-H>", "<C-W>h")
map("n", "<C-L>", "<C-W>l")

-- Disable arrow keys
map({'i','n'}, '<up>', '<nop>')
map({'i','n'}, '<down>', '<nop>')
map('n', '<left>', ':bp<cr>')
map('n', '<right>', ':bn<cr>')


map('n', '<leader>tk', '<C-w>t<C-w>K') -- change vertical to horizontal
map('n', '<leader>th', '<C-w>t<C-w>H') -- change horizontal to vertical

map('n', '<C-b>', ':NvimTreeToggle<CR>')            -- open/close
map('n', '<leader>s', ':NvimTreeRefresh<CR>')       -- refresh
map('n', '<leader>n', ':NvimTreeFindFile<CR>')      -- search file

-- magic

map({'n','v'}, 'n', 'nzz', {noremap=true,silent=true})
map({'n','v'}, 'N', 'Nzz', {noremap=true,silent=true})
map({'n','v'}, '#', '#zz', {noremap=true,silent=true})
map({'n','v'}, '*', '*zz', {noremap=true,silent=true})
map({'n','v'}, 'g*', 'g*zz', {noremap=true,silent=true})

map('n','<leader>p','<cmd>lua require("telescope.builtin").find_files()<cr>')
map('n','<leader>gg' ,'<cmd>lua require("telescope.builtin").live_grep()<cr>')
map('n','<leader>gb', '<cmd>lua require("telescope.builtin").buffers()<cr>')
map('n','<leader>gh', '<cmd>lua require("telescope.builtin").help_tags()<cr>')

-- Harpoon Thanks prime
-- Terminal commands 
-- ueoa is first through fourth finger left hand home row.
-- This just means I can crush, with opposite hand, the 4 terminal positions
--
-- These functions are stored in harpoon.  A plugn that I am developing
map('n',"<leader>q", function() require("harpoon.mark").add_file() end, {noremap=true, silent = true})
map('n',"<leader>r", function() require("harpoon.mark").rm_file() end, {noremap=true, silent = true})
map('n',"<leader>e", function() require("harpoon.ui").toggle_quick_menu() end, {noremap=true, silent = true})

map('n',"<C-a>", function() require("harpoon.ui").nav_file(1) end, {noremap=true, silent = true})
map('n',"<C-s>", function() require("harpoon.ui").nav_file(2) end, {noremap=true, silent = true})
map('n',"<C-d>", function() require("harpoon.ui").nav_file(3) end, {noremap=true, silent = true})

map("", "L", ":HopWordCurrentLine<cr>", { silent = true })
-- keymap("", "S", ":HopChar2<cr>", { silent = true })
map("", "M", ":HopPattern<cr>", { silent = true })
map("", "H", ":HopChar2<cr>", { silent = true })

-- map({'n','v'}, 'f', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>", {})
-- map({'n','v'}, 'F', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>", {})
-- map({'n','v'}, 't', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })<cr>", {})
-- map({'n','v'}, 'T', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })<cr>", {})


