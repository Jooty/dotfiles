vim.opt.termguicolors = true
require("bufferline").setup{
    options = {
        separator_style = "slope",
        always_show_bufferline = true,
        show_buffer_icons = true,
        show_buffer_close_icons = true,
        diagnostics = "nvim_lsp",
        offsets = {
            {
                filetype = "neo-tree",
                text = "Neotree",
                text_align = "center",
                separator = true
            }
        },
    }
}
