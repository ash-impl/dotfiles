return {
  url = 'https://gitlab.com/schrieveslaach/sonarlint.nvim',
  config = function()
    require('sonarlint').setup {
      -- SonarLint server path
      server = {
        cmd = {
          'sonarlint-language-server',
          '-stdio',
          '-analyzers',
          vim.fn.stdpath 'data' .. '/mason/share/sonarlint-analyzers/sonargo.jar',
          vim.fn.stdpath 'data' .. '/mason/share/sonarlint-analyzers/sonarpython.jar',
        },
      },
      filetypes = {
        'go',
        'python',
      },
    }
  end,
}
