-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Remap 0 to go to the first non-blank character
vim.api.nvim_set_keymap('n', '0', '^', { noremap = true })

-- Escape shortcuts in insert mode
vim.api.nvim_set_keymap('i', 'jk', '<Esc>', { noremap = true })
vim.api.nvim_set_keymap('i', 'kj', '<Esc>', { noremap = true })
vim.api.nvim_set_keymap('i', 'jj', '<Esc>', { noremap = true })
vim.api.nvim_set_keymap('i', 'kk', '<Esc>', { noremap = true })

-- Calling splits
vim.api.nvim_set_keymap('n', '<leader>h', ':split ', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>v', ':vsplit ', { noremap = true })

-- Quick save/quit options
vim.api.nvim_set_keymap('n', '<leader>w', ':w!<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>q', ':wq<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>e', ':q!<CR>', { noremap = true })
vim.cmd('cnoremap w!! w !sudo tee %')

-- 6. Visual Mode Related
-- vim.api.nvim_set_keymap('v', '*', ':<C-u>call VisualSelection("", "")<CR>/<C-R>=@/<CR><CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('v', '#', ':<C-u>call VisualSelection("", "")<CR>?<C-R>=@/<CR><CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<', '<gv', { noremap = true })
vim.api.nvim_set_keymap('v', '>', '>gv', { noremap = true })

-- Window navigation
vim.api.nvim_set_keymap('n', '<C-j>', '<C-W>j', { desc = 'Go to Left Window', noremap = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-W>k', { desc = 'Go to Lower Window', noremap = true })
vim.api.nvim_set_keymap('n', '<C-h>', '<C-W>h', { desc = 'Go to Upper Window', noremap = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-W>l', { desc = 'Go to Right Window', noremap = true })

-- Resize windows
vim.api.nvim_set_keymap('n', '<M-j>', ':resize -2<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<M-k>', ':resize +2<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<M-h>', ':vertical resize -2<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<M-l>', ':vertical resize +2<CR>', { noremap = true })

--- wsl settings
if vim.fn.has("wsl") then
  vim.g.clipboard = {
    name = "win_clipboard",
    copy = {
      ["+"] = "clip.exe",
      ["*"] = "clip.exe",
    },
    paste = {
      ["+"] = "powershell.exe Get-Clipboard",
      ["*"] = "powershell.exe Get-Clipboard",
    },
    cache_enabled = 0,
  }

  vim.keymap.set({"n", "v"}, "y", '"+y', { noremap = true, silent = true })
  vim.keymap.set({"n", "v"}, "p", '"+p', { noremap = true, silent = true })
end

-- 9. Spell Checking
-- vim.api.nvim_set_keymap('n', '<leader>ss', ':setlocal spell!<CR>', { noremap = true })

-- 7. Moving Around, Tabs, Windows, and Buffers -- DEPRECATED FOR LAZYVIM DEFAULTS
-- vim.api.nvim_set_keymap('n', '<leader><CR>', ':noh<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<leader>bd', ':Bclose<CR>:tabclose<CR>gT', { noremap = true })
-- vim.api.nvim_set_keymap('n', '<leader>ba', ':bufdo bd<CR>', { noremap = true })
-- vim.api.nvim_set_keymap('n', '<leader>l', ':bnext<CR>', { noremap = true })
-- vim.api.nvim_set_keymap('n', '<leader>h', ':bprevious<CR>', { noremap = true })
-- vim.api.nvim_set_keymap('n', '<TAB>', ':bnext<CR>', { noremap = true })
-- vim.api.nvim_set_keymap('n', '<S-TAB>', ':bprevious<CR>', { noremap = true })

-- Tab management -- DEPRECATED FOR LAZYVIM DEFAULTS
-- vim.api.nvim_set_keymap('n', '<leader>tn', ':tabnew<CR>', { noremap = true })
-- vim.api.nvim_set_keymap('n', '<leader>to', ':tabonly<CR>', { noremap = true })
-- vim.api.nvim_set_keymap('n', '<leader>tc', ':tabclose<CR>', { noremap = true })
-- vim.api.nvim_set_keymap('n', '<leader>tm', ':tabmove', { noremap = true })

-- DEPRECATED
-- 8. Status Line
-- vim.opt.laststatus = 2
-- vim.opt.statusline = [[ %{HasPaste()}%F%m%r%h %w CWD:%r%{getcwd()} Line:%l Column:%c ]]

-- 10. Miscellaneous
-- vim.api.nvim_set_keymap('n', '<leader>n', ':e ~/buffer<CR>', { noremap = true })
-- vim.api.nvim_set_keymap('n', '<leader>x', ':e ~/buffer.md<CR>', { noremap = true })
