return {
  'nvimtools/none-ls.nvim',
  config = function()
    local null_ls = require('null-ls')
    null_ls.setup({
      sources = {
        -- null_ls.builtins.diagnostics.jsonlint,
        -- null_ls.builtins.diagnostics.editorconfig_checker,
        -- null_ls.builtins.formatting.black,
      },
    })
  end,
}

