return {
  {
    -- Inactive alternative theme
    'rose-pine/neovim',
    name = 'rose-pine',
  },

  {
    'projekt0n/github-nvim-theme',
    priority = 1000,
    lazy = false,
    config = function()
      require('github-theme').setup({})
      vim.cmd.colorscheme 'github_dark'
    end,
  },
}

