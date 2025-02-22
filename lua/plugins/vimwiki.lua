return {
  'vimwiki/vimwiki',
  event = VeryLazy,
  lazy = true,
  enabled = false,
  keys = {
    { "<leader>ww", ":VimwikiIndex 1<CR>", desc = "Open main wiki" },
    { "<leader>ee", ":VimwikiIndex 2<CR>", desc = "Open neuro wiki" },
  },
  ft = { "vimwiki", "markdown" },
  init = function()
    vim.g.vimwiki_list = {
      {
        path = '~/vimwiki/',
        syntax = 'markdown',
        ext = '.md'
      },

      {
        path = '~/repo/neuro/',
        syntax = 'markdown',
        ext = '.md'
      }
    }

    -- Register markdown for vimwiki in treesitter
    vim.treesitter.language.register('markdown', 'vimwiki')
  end,
}
