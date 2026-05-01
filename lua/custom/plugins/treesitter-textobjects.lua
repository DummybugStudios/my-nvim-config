return {
  {
    'nvim-treesitter/nvim-treesitter-textobjects',
    branch = 'main',
    dependencies = { 'nvim-treesitter/nvim-treesitter' },
    init = function()
      -- Disable plugin's built-in ftplugin mappings to avoid conflicts
      vim.g.no_plugin_maps = true
    end,
    config = function()
      -- Provide treesitter textobjects; keymaps are handled by mini.ai
      require('nvim-treesitter-textobjects').setup {
        select = {
          lookahead = true,
          selection_modes = {
            ['@parameter.outer'] = 'v',
            ['@function.outer'] = 'V',
          },
          include_surrounding_whitespace = false,
        },
        move = {
          set_jumps = true,
        },
        swap = {
          enable = true,
        },
      }
    end,
  },
}
