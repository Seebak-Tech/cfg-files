local actions = require("telescope.actions")

require("telescope").setup({
  defaults = {
    layout_config = {
      horizontal = { width = 0.85 },
      preview_width = 0.6,
    },
    mappings = {
      i = {
        ["<esc>"] = actions.close,
        ["<C-k>"] = actions.preview_scrolling_up,
        ["<C-j>"] = actions.preview_scrolling_down,
      },
      n = {
        ["<C-k>"] = actions.preview_scrolling_up,
        ["<C-j>"] = actions.preview_scrolling_down,
      }
    }
  },
  extensions = {
    project = {
      base_dirs = {
        '/workspace',
      },
      theme = "dropdown",
    },
    file_browser = {
      -- disables netrw and use telescope-file-browser in its place
      hijack_netrw = true,
    },
  },
})

require("telescope").load_extension('file_browser')
require("telescope").load_extension('project')
require("telescope").load_extension("git_worktree")
