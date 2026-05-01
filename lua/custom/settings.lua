-- Save file as sudo by typing :W
vim.api.nvim_create_user_command('W', function()
  vim.cmd("silent! write !sudo tee % > /dev/null")
  vim.cmd("edit!")
end, { desc = 'Save file as root' })

vim.keymap.set('n', '<C-/>', function() vim.cmd(":vsplit") end)


vim.keymap.set({'t','n','i'}, '<C-h>', [[<C-\><C-n><C-w>h]])
vim.keymap.set({'t','n','i'}, '<C-j>', [[<C-\><C-n><C-w>j]])
vim.keymap.set({'t','n','i'}, '<C-k>', [[<C-\><C-n><C-w>k]])
vim.keymap.set({'t','n','i'}, '<C-l>', [[<C-\><C-n><C-w>l]])
-- vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]])
