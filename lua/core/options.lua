vim.cmd 'let g:netrw_liststyle = 3'
local opt = vim.opt

vim.opt.showmode = false
vim.opt.swapfile = false
opt.relativenumber = true
opt.number = true

-- lines above and below the cursor
vim.opt.scrolloff = 10
vim.opt.sidescrolloff = 10

-- preview substitutions
vim.opt.inccommand = 'split'

-- highlight on search, but clear on esc
vim.opt.hlsearch = true

-- indentation
opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one

opt.wrap = false

-- search
opt.ignorecase = true
opt.smartcase = true

opt.cursorline = true

-- colors
opt.termguicolors = true
opt.background = 'dark'
opt.signcolumn = 'yes'

-- backspace
opt.backspace = 'indent,eol,start'

-- split
opt.splitright = true
opt.splitbelow = true

vim.opt.mouse = 'a'
vim.opt.mousemoveevent = true

-- highlight text when I yank
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Diagnostics
vim.diagnostic.config { virtual_text = false }

-- Decrease update time
vim.opt.updatetime = 250

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
vim.opt.timeoutlen = 300
