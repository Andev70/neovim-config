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
    disable = { "yaml" },
    additional_vim_regex_highlighting = true,
  },
  -- enable indentation
  indent = { enable = true },
  autotag = {
    enable = true,
    filetypes = { "html", "xml", "jsx", "tsx", "svelte", "vue" },
  },
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
      "#3f362f", -- red
      "#0284c7", -- orange
      "#BFDB38", -- yellow
      "#FFC93C", -- green
      "#0E8388", -- cyan
      "#8BF5FA", -- blue
      "#C9F4AA", -- purple
    },
    textobjects = {
      select = {
        enable = true,
        keymaps = {
          ["af"] = "@function.outer",
          ["if"] = "@function.inner",
          ["aC"] = "@class.outer",
          ["iC"] = "@class.inner",
        },
      },
      move = {
        enable = true,
        set_jumps = true,
        goto_next_start = {
          ["]]"] = "@function.outer",
          ["]c"] = "@class.outer",
        },
        goto_next_end = {
          ["]["] = "@function.outer",
          ["]C"] = "@class.outer",
        },
        goto_previous_start = {
          ["[["] = "@function.outer",
          ["[c"] = "@class.outer",
        },
        goto_previous_end = {
          ["[]"] = "@function.outer",
          ["[C"] = "@class.outer",
        },
      },
      lsp_interop = {
        enable = true,
        border = "single",
        peek_definition_code = {
          ["df"] = "@function.outer",
          ["dC"] = "@class.outer",
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

-- Define the colors for the brackets and matching pairs
vim.cmd("highlight MatchParenCur guifg=#FF00FF guibg=none")
vim.cmd("highlight MatchParen guifg=none guibg=#44475a")
