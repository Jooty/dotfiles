require('telescope').setup {
  defaults = {
    previewer = true,
    preview_cutoff = 1,
    file_previewer = require'telescope.previewers'.vim_buffer_cat.new,
    grep_previewer = require'telescope.previewers'.vim_buffer_vimgrep.new,
    qflist_previewer = require'telescope.previewers'.vim_buffer_qflist.new,
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
    pickers = {
      colorscheme = {
        enable_preview = true
      }
    }
  },
}

require("telescope").load_extension("ui-select")
