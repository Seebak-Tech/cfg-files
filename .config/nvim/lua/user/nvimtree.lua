-- Empty setup using defaults
-- require("nvim-tree").setup()

-- Setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  remove_keymaps = {
    "-"
  },
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})
