require "nvchad.options"

-- Custom options.lua for NvChad

local opt = vim.opt -- Shortcut for vim options

-- Indentation
opt.tabstop = 2        -- Number of spaces per tab
opt.shiftwidth = 2     -- Number of spaces for indentation
opt.softtabstop = 2    -- Number of spaces for Tab key
opt.expandtab = true   -- Convert tabs to spaces
opt.smartindent = true -- Enable smart indentation

-- Line Numbers
opt.number = true         -- Show line numbers
opt.relativenumber = true -- Relative line numbers for easier navigation

-- Search
opt.ignorecase = true -- Ignore case in search patterns
opt.smartcase = true  -- Case-sensitive if uppercase is used
opt.incsearch = true  -- Show search results as you type
opt.hlsearch = false  -- Do not highlight search matches

-- Appearance
opt.wrap = false         -- Disable line wrapping
opt.cursorline = true    -- Highlight the current line
opt.termguicolors = true -- Enable 24-bit RGB colors
opt.scrolloff = 8        -- Keep 8 lines visible above/below the cursor
opt.signcolumn = "yes"   -- Always show sign column to avoid text shifting

-- File and Backup
opt.swapfile = false -- Disable swap file
opt.backup = false   -- Disable backup file
opt.undofile = true  -- Enable persistent undo

-- Splits
opt.splitright = true -- Open vertical splits to the right
opt.splitbelow = true -- Open horizontal splits below

-- Coding Assistance
opt.updatetime = 300      -- Faster update time for diagnostics
opt.colorcolumn = "80"    -- Highlight the 80th column for line length
opt.foldmethod = "syntax" -- Syntax-based folding
opt.foldlevel = 99        -- Open folds by default

-- Performance
opt.lazyredraw = true -- Do not redraw screen during macros
opt.hidden = true     -- Allow switching buffers without saving
