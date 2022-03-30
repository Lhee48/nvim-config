-- :help options
vim.opt.autoindent = true
vim.opt.backup = false                          -- creates a backup file
vim.opt.clipboard = "unnamedplus"               -- allows neovim to access the system clipboard
vim.opt.cmdheight = 2                           -- more space in the neovim command line for displaying messages
vim.opt.colorcolumn = "80"                      -- at 80 columns a line will show
vim.opt.completeopt = { "menuone", "noselect" } -- mostly just for cmp
vim.opt.conceallevel = 0                        -- so that `` is visible in markdown files
vim.opt.fileencoding = "utf-8"                  -- the enocoding written to a file
vim.opt.guicursor = ""                          -- makes the cursor always be a block
vim.opt.hlsearch = true                         -- highlight all matches on previous search pattern
vim.opt.ignorecase = true                       -- ignore case in search patterns
vim.opt.incsearch = true                        -- shows result of search while typing
vim.opt.mouse = "a"                             -- allows the mouse to be used in neovim
vim.opt.pumheight = 10                          -- pop up menu height
vim.opt.showtabline = 2                         -- always show tabs
vim.opt.signcolumn = "yes"                      -- set numbered lines
vim.opt.smartcase = true                        -- only searches caps if search is caps
vim.opt.smartindent = true                      -- follows the indentation of current block
vim.opt.splitbelow = true                       -- forces all horizontal splits to to go below current window
vim.opt.splitright = true                       -- forces all vertical splits to go to the right of current window
vim.opt.swapfile = false                        -- does not create a swapfile
vim.opt.timeoutlen = 1000                       -- time to wait for a mapped sequence to complete (in ms)
vim.opt.undofile = true                         -- enables persistent undo
vim.opt.updatetime = 300                        -- faster completion (4000ms default)
vim.opt.wrap = false                            -- set numbered lines
vim.opt.expandtab = true                        -- convert tabs into spaces

-- option for colorcolumn
vim.cmd "highlight colorcolumn guibg='Grey40'"

-- option for tabs and indents
vim.opt.shiftwidth = 4                          -- the number of spaces inserted for each indent
vim.opt.tabstop = 4                             -- insert 4 spaces for a tab
vim.opt.softtabstop = 4                         -- number of spaces tabs count for when editing

-- options for number line
vim.opt.number = true                           -- set numbered lines
vim.opt.relativenumber = true                   -- numbering is relative to current line

-- options for scrolling behavior
vim.opt.scrolloff = 8                           -- will start to scroll when 8 lines before the edge
vim.opt.sidescrolloff = 8                       -- like scrolloff but to the side

-- options for the theme
vim.opt.termguicolors = true
vim.o.background = "dark"
vim.cmd([[colorscheme gruvbox]])

-- options for status line
vim.cmd "let g:airline_powerline_fonts = 1"
