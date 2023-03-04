vim.g.user_emmet_leader_key='<C-Z>'
vim.g.user_emmet_install_global = 0 -- Install only for the current buffer
vim.g.user_emmet_mode='i' -- Trigger Emmet in insert mode.

function emmet_tab()
  if vim.fn.pumvisible() == 1 then
    return vim.fn['coc#_select_confirm']()
  else
    return vim.fn['emmet#expandAbbr'](0, "user")
  end
end

vim.api.nvim_set_keymap('i', '<Tab>', 'v:lua.emmet_tab()', {expr = true, noremap = true})

