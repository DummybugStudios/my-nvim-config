return {
  -- Git integration
  {
    'tpope/vim-fugitive',
    config = function()
      vim.keymap.set('n', '<leader>gs',vim.cmd.Git, { desc = "[G]it [S]tatus" })
    end,
  }, 

  'tpope/vim-rhubarb',

  -- Detect tabstop and shiftwidth automatically
  'tpope/vim-sleuth',
}

