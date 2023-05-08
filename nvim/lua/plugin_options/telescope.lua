require('telescope').setup {
  defaults = {
    prompt_prefix = ' > ',
    selection_caret = ' ',
    layout_strategy = 'vertical',
    layout_config = {
      width = 0.75,
      height = 0.85,
      preview_cutoff = 120,
      horizontal = {
        mirror = false,
      },
      vertical = {
        mirror = false,
      },
    },
    file_ignore_patterns = {
      "node_modules",
      ".git",
      "bin", -- CSharp build directory
      "obj", -- CSharp build directory
    },
  },
}

require("telescope").load_extension("ui-select")
require("telescope").setup{ pickers = { colorscheme = { enable_preview = true } } }
