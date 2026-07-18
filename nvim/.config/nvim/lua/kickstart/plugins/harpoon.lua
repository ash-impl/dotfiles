return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  depends = { 'nvim-lua/plenary.nvim' },
  config = function()
    require('harpoon').setup()
  end,
  lazy = false,
}
