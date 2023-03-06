-- import nvim-treesitter plugin safely
local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
  return
end

-- configure treesitter
treesitter.setup({
  -- enable syntax highlighting
  highlight = {
    enable = true,
  },
  -- enable indentation
  indent = { enable = true },
  -- enable autotagging (w/ nvim-ts-autotag plugin)
  autotag = { enable = true },
  -- ensure these language parsers are installed
  ensure_installed = {
    "json",
    "javascript",
    "typescript",
    "tsx",
    "yaml",
    "html",
    "css",
    "markdown",
    "markdown_inline",
    "svelte",
    "graphql",
    "bash",
    "lua",
    "vim",
    "dockerfile",
    "gitignore",
  },
  -- auto install above language parsers
  auto_install = true,

  rainbow = {
    enable = true,
    -- specify which groups of brackets to highlight
    extended_mode = true,
    max_file_lines = 1000,

    colors = {
      '#FF0000', -- red
      '#FFA500', -- orange
      '#FFFF00', -- yellow
      '#00FF00', -- green
      '#00FFFF', -- cyan
      '#0000FF', -- blue
      '#800080', -- purple
    },
textobjects = {
      select = {
        enable = true,
        keymaps = {
          ['af'] = '@function.outer',
          ['if'] = '@function.inner',
          ['aC'] = '@class.outer',
          ['iC'] = '@class.inner',
        },
      },
      move = {
        enable = true,
        set_jumps = true,
        goto_next_start = {
          [']]'] = '@function.outer',
          [']c'] = '@class.outer',
        },
        goto_next_end = {
          [']['] = '@function.outer',
          [']C'] = '@class.outer',
        },
        goto_previous_start = {
          ['[['] = '@function.outer',
          ['[c'] = '@class.outer',
        },
        goto_previous_end = {
          ['[]'] = '@function.outer',
          ['[C'] = '@class.outer',
        },
      },
      lsp_interop = {
        enable = true,
        border = 'single',
        peek_definition_code = {
          ['df'] = '@function.outer',
          ['dC'] = '@class.outer',
        },
      },
    },
  pairs = {
    ["("] = ")",
    ["["] = "]",
    ["{"] = "}",
  },
  -- set round_brackets to false to disable the rainbow for round brackets
  round_brackets = false,
  },
    -- Add these lines
    -- to show the lines connecting the brackets
    -- and customize the style as needed
    -- refer to :h nvim-treesitter-textobjects
    -- for more options
    
})
