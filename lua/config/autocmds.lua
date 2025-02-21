-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
vim.api.nvim_create_autocmd({'FocusGained', 'BufEnter'}, { command = 'checktime' })

-- Remember last edit position
vim.api.nvim_create_autocmd('BufReadPost', {
    callback = function()
        if vim.fn.line("'\"") > 0 and vim.fn.line("'\"") <= vim.fn.line("$") then
            vim.cmd('normal! g`"')
        end
    end,
})

-- Remove trailing whitespaces
vim.api.nvim_create_autocmd('BufWritePre', { command = '%s/\\s\\+$//e' })

-- Center document when entering insert mode
vim.api.nvim_create_autocmd('InsertEnter', { command = 'norm zz' })

