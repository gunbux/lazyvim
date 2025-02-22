return {
  'itchyny/calendar.vim',
  enabled = false,
  config = function()
    -- Enable Google Calendar integration
    vim.cmd('source ~/.cache/calendar.vim/credentials.vim')
    vim.g.calendar_google_calendar = 1
    vim.g.calendar_view = { 'year', 'month', 'week', 'day_4', 'agenda', 'clock' }

    -- Hotkey for opening Calendar in days view, with a vertical split on the right
    vim.api.nvim_set_keymap('n', '<leader>c', ':Calendar -view=days -split=vertical -position=right<CR>', { noremap = true })
  end,
}
