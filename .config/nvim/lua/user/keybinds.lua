-- set_keymap({mode}, {keymap}, {mapped to}, {options})
local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true }
local slt_opts = { noremap = true, silent = true }

-- inoremap <esc> <NOP>
keymap("i", "<esc>", "<NOP>", opts)
keymap("n", "<C-k>", "<NOP>", opts)

-- inoremap jk <esc>
keymap("i", "jk", "<esc>", opts)

-- Guarda el archivo actual
-- nnoremap <leader>w :w<cr>
keymap("n", "-w", "<Cmd>w<cr>", opts)

-- Formating Code
keymap("n", "-f", ":Format<cr>", opts)

-- Silencia la busqueda para evitar que se quede pintada la cadena buscada
-- noremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>
keymap("n", "<C-l>", ":<C-u>nohlsearch<CR><C-l>", slt_opts)

-- Telescope
keymap("n", "<leader>ff", "<Cmd>Telescope find_files<cr>", opts)
keymap("n", "<leader>f.", "<Cmd>Telescope find_files hidden=true<cr>", opts)
keymap("n", "<leader>fg", "<Cmd>Telescope live_grep<cr>", opts)
keymap("n", "<leader>bl", "<Cmd>Telescope buffers<cr>", opts)
keymap("n", "<leader>fh", "<Cmd>Telescope oldfiles<cr>", opts)
keymap("n", "<leader>fb", ":Telescope file_browser<cr>", opts)
keymap("n", "<leader>ft", ":Telescope treesitter<cr>", opts)
keymap("n", "<leader>fp", ":lua require'telescope'.extensions.project.project{ display_type = 'full' }<cr>", opts)
keymap("n", "<leader>gws", ":Telescope git_worktree git_worktrees<CR>", opts)
keymap("n", "<leader>gwc", ":Telescope git_worktree create_git_worktree<CR>", opts)

-- Git
keymap("n", "<leader>gf", ":Git fetch --all -p<CR>", opts)
keymap("n", "<leader>gp", ":Git pull<CR>", opts)

-- Test
keymap("n", "<leader>kn", ":lua require('neotest').run.run()<cr>", slt_opts)
keymap("n", "<leader>kf", ":lua require('neotest').run.run(vim.fn.expand('%'))<cr>", slt_opts)
keymap("n", "<leader>kt", ":lua require('neotest').summary.toggle()<cr>", slt_opts)
keymap("n", "<leader>ko", ":lua require('neotest').output.open({enter = true})<cr>", slt_opts)
keymap("n", "<leader>kc", ":lua require('neotest').summary.close()<cr>", slt_opts)
keymap("n", "<leader>kl", ":lua require('neotest').run.run_last()<cr>", slt_opts)
keymap("n", "<leader>ks", ":lua require('neotest').run.stop()<cr>", slt_opts)

-- DirTree
keymap("n", "<leader>tt", ":NvimTreeToggle<cr>", slt_opts)

-- Go to Buffer
keymap("n", "-1", "<Cmd>BufferLineGoToBuffer 1<CR>", opts)
keymap("n", "-2", "<Cmd>BufferLineGoToBuffer 2<CR>", opts)
keymap("n", "-3", "<Cmd>BufferLineGoToBuffer 3<CR>", opts)
keymap("n", "-4", "<Cmd>BufferLineGoToBuffer 4<CR>", opts)
keymap("n", "-5", "<Cmd>BufferLineGoToBuffer 5<CR>", opts)
keymap("n", "-6", "<Cmd>BufferLineGoToBuffer 6<CR>", opts)
keymap("n", "-7", "<Cmd>BufferLineGoToBuffer 7<CR>", opts)
keymap("n", "-8", "<Cmd>BufferLineGoToBuffer 8<CR>", opts)
keymap("n", "-9", "<Cmd>BufferLineGoToBuffer 9<CR>", opts)
keymap("n", "-$", "<Cmd>BufferLineGoToBuffer -1<CR>", opts)
