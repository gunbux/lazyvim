-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Chun's General Neovim Settings, but in LazyVim
-- Table of Contents
-- 1 - General/Basic Settings
-- 2 - Vim User Interface
-- 3 - Colours and Fonts
-- 4 - Files, backups and undo
-- 5 - Text, tab and indent related
-- MOVED TO KEYMAP
-- 6 - Visual Mode related
-- 7 - Moving around, tabs, windows and buffers
-- 8 - Status Line
--
-- A large part of this vim configuration was taken from amix, brodie, and
-- chrisatmachine.

-- These should be default in LazyVim, but redeclaring in case that ever changes

-- 1. Basic Settings
vim.opt.mouse = 'a'
-- only set clipboard if not in ssh, to make sure the OSC 52
-- integration works automatically. Requires Neovim >= 0.10.0
vim.opt.clipboard = vim.env.SSH_TTY and "" or "unnamedplus" -- Sync with system clipboard
vim.opt.history = 500
vim.opt.autoread = true -- autoload if file is changed
-- vim.opt.autochdir = true

-- Set mapleader
vim.g.mapleader = ' '

-- Fix splitting
vim.opt.splitbelow = true
vim.opt.splitright = true

-- 2. Vim User Interface
vim.opt.wildmenu = true
vim.opt.wildmode = { 'longest', 'list', 'full' }
vim.opt.ruler = true
vim.opt.cmdheight = 1
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.magic = true
vim.opt.showmatch = true
vim.opt.number = true
vim.opt.relativenumber = false

-- Persistent undo
vim.opt.undodir = vim.fn.expand('~/.vim_runtime/temp_dirs/undodir')
vim.opt.undofile = true

-- 3. Colours and Fonts
vim.cmd('syntax enable')
vim.opt.termguicolors = true
vim.opt.cursorline = true
vim.opt.cursorcolumn = true

-- 4. Files, Backups, and Undo
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false

-- 5. Text, Tab, and Indent Settings
vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.textwidth = 600
