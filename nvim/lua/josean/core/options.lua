local opt = vim.opt -- for conciseness
--disable swap files
opt.swapfile = false
-- line numbers
opt.relativenumber = true -- show relative line numbers
opt.number = true -- shows absolute line number on cursor line (when relative number is on)

-- tabs & indentation
opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one

-- line wrapping
opt.wrap = false -- disable line wrapping

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

-- cursor line
opt.cursorline = true -- highlight the current cursor line

-- appearance

-- turn on termguicolors for nightfly colorscheme to work
-- (have to use iterm2 or any other true color terminal)
opt.termguicolors = true
opt.background = "dark" -- colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes" -- show sign column so that text doesn't shift

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

opt.iskeyword:append("-") -- consider string-string as whole word
-- Automatically format code with Prettier on save
vim.api.nvim_exec(
  [[
  autocmd BufWritePre *.js,*.jsx,*.ts,*.tsx,*.json,*.md,*.html,*.css,*.yaml,*.yml PrettierAsync
]],
  false
)

-- word wrap
vim.wo.wrap = true
-- Customize Git status indicators in nvim-tree
vim.g.nvim_tree_git_hl = 1
vim.g.nvim_tree_git_hl_modified = "M"
vim.g.nvim_tree_git_hl_add = "A"
vim.g.nvim_tree_git_hl_delete = "D"
vim.g.nvim_tree_git_hl_rename = "R"
