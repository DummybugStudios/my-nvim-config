-- Save file as sudo by typing :W
vim.api.nvim_create_user_command('W', function()
  vim.cmd("silent! write !sudo tee % > /dev/null")
  vim.cmd("edit!")
end, { desc = 'Save file as root' })

vim.keymap.set('n', '<C-/>', function() vim.cmd(":vsplit") end)
