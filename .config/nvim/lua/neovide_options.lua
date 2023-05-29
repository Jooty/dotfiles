vim.g.neovide_cursor_animation_length = 0.05
vim.g.neovide_cursor_trail_size = 0.3
vim.g.neovide_cursor_antialiasing = false
vim.g.neovide_cursor_animate_in_insert_mode = true
vim.opt.swapfile = false

s_guifontsize = 9
s_guifont="Fira Code"
vim.opt.guifont= s_guifont .. ":h" .. s_guifontsize

vim.g.neovide_refresh_rate=60
vim.g.neovide_transparency=0.97
vim.g.neovide_no_idle=false
vim.g.neovide_fullscreen=false
vim.g.neovide_cursor_animation_length=0.10
vim.g.neovide_cursor_trail_length=0.5
vim.g.neovide_cursor_antialiasing=true
vim.g.neovide_cursor_vfx_mode="ripple"
vim.g.neovide_cursor_vfx_opacity=200.0
vim.g.neovide_cursor_vfx_particle_lifetime=1.2
vim.g.neovide_cursor_vfx_particle_density=7.0
vim.g.neovide_cursor_vfx_particle_speed=10.0
vim.g.neovide_cursor_vfx_particle_phase=1.5
vim.g.neovide_cursor_vfx_particle_curl=1.0

function AdjustFontSize(amount)
    s_guifontsize = s_guifontsize + amount
    vim.opt.guifont= s_guifont .. ":h" .. s_guifontsize
end

vim.api.nvim_set_keymap('n', '<C-=>', '<cmd>lua AdjustFontSize(1)<cr>', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-->', '<cmd>lua AdjustFontSize(-1)<cr>', {noremap = true})
