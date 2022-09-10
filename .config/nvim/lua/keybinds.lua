-- set_keymap({mode}, {keymap}, {mapped to}, {options})
local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true }

-- inoremap <esc> <NOP>
keymap('i', '<esc>', '<NOP>', opts)
-- inoremap jk <esc>
keymap('i', 'jk', '<esc>', opts)

-- Guarda el archivo actual
-- nnoremap <leader>w :w<cr>
keymap('n', '-w', '<Cmd>w<cr>', opts)

-- Silencia la busqueda para evitar que se quede pintada la cadena buscada
-- noremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>
keymap('n', '<C-l>', ':<C-u>nohlsearch<CR><C-l>', { noremap = true, silent = true})

-- Telescope
keymap('n', '<leader>ff', '<Cmd>Telescope find_files hidden=true<cr>', opts)
keymap('n', '<leader>fg', '<Cmd>Telescope live_grep<cr>', opts)
keymap('n', '<leader>bl', '<Cmd>Telescope buffers<cr>', opts)
keymap('n', '<leader>fh', '<Cmd>Telescope oldfiles<cr>', opts)
keymap('n', '<leader>fb', ':Telescope file_browser<cr>', opts)
keymap('n', '<leader>ft', ':Telescope treesitter<cr>', opts)
keymap('n', '<leader>fp', ":lua require'telescope'.extensions.project.project{ display_type = 'full' }<cr>", opts)
keymap('n', '<leader>gws', ':Telescope git_worktree git_worktrees<CR>', opts)
keymap('n', '<leader>gwc', ':Telescope git_worktree create_git_worktree<CR>', opts)

-- Git
keymap('n', '<leader>gf', ':Git fetch --all -p<CR>', opts)
keymap('n', '<leader>gp', ':Git pull<CR>', opts)
