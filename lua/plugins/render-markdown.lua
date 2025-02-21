return {
  'MeanderingProgrammer/render-markdown.nvim',
  dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' }, -- if you use the mini.nvim suite
  config = function()
    require('render-markdown').setup({
      file_types = { 'markdown', 'vimwiki' },
      checkbox = {
          custom = {
            important = { raw = '[~]', rendered = '󰓎 ', highlight = 'DiagnosticWarn' },
          },
      }
    })
  end,
  opts = {},
}
