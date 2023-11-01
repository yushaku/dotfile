return {
  { "christoomey/vim-tmux-navigator", enabled = true },
  { "echasnovski/mini.indentscope", enabled = true },
  { "echasnovski/mini.surround", opts = { mappings = { add = "sa", delete = "sd", replace = "sc" } } },
  {
    "echasnovski/mini.animate",
    event = "VeryLazy",
    opts = function()
      local animate = require("mini.animate")
      return {
        cursor = { enable = true, timing = animate.gen_timing.linear({ duration = 50, unit = "total" }) },
        resize = { enable = false },
        open = { enable = false },
        close = { enable = false },
      }
    end,
  },
  {
    "simrat39/symbols-outline.nvim",
    enabled = true,
    event = "VeryLazy",
    keys = { { "<leader>o", "<CMD>:SymbolsOutline<CR>", { desc = "toggle outlne" } } },
    opts = {
      position = "right",
      keymaps = {
        close = { "<Esc>", "q" },
        goto_location = "<Cr>",
        focus_location = { "o", "f" },
        toggle_preview = "K",
        rename_symbol = "r",
        code_actions = "a",
        fold = "h",
        unfold = "l",
        fold_all = "H",
        unfold_all = "L",
        fold_reset = "R",
      },
    },
  },
  {
    "NvChad/nvim-colorizer.lua",
    enabled = true,
    event = "VeryLazy",
    keys = {
      { "<leader>cc", "<CMD>ColorizerToggle<CR>", desc = "toggle preview color" },
    },
    opts = {
      user_default_options = { tailwind = true },
    },
  },
  -- {
  --   "uga-rosa/ccc.nvim",
  --   enabled = true,
  --   event = "VeryLazy",
  --   keys = {
  --     { "<leader>cc", "<CMD>CccHighlighterToggle<CR>", desc = "toggle display color preview css" },
  --     { "<leader>cp", "<CMD>CccPick<CR>", desc = "color picker css" },
  --     { "<leader>cC", "<CMD>CccConvert<CR>", desc = "convert to other color's type" },
  --   },
  -- },
  {
    "xiyaowong/transparent.nvim",
    event = "VeryLazy",
    enabled = true,
    keys = { { "<f1>", "<CMD>TransparentToggle<CR>", desc = "toggle Transparent bg" } },
  },
  {
    "folke/noice.nvim",
    enabled = true,
    opts = {
      lsp = { progress = { enabled = false } },
      messages = { enabled = false },
      presets = {
        bottom_search = true, -- use a classic bottom cmdline for search
        command_palette = true, -- position the cmdline and popupmenu together
        long_message_to_split = true, -- long messages will be sent to a split
        inc_rename = false, -- enables an input dialog for inc-rename.nvim
        lsp_doc_border = false, -- add a border to hover docs and signature help
      },
    },
  },
  {
    "akinsho/bufferline.nvim",
    keys = {
      { "<leader>b1", "<CMD>BufferLineGoToBuffer 1<CR>", desc = "go to first buffer" },
      { "<leader>b2", "<CMD>BufferLineGoToBuffer 2<CR>", desc = "go to second buffer" },
      { "<leader>b3", "<CMD>BufferLineGoToBuffer 3<CR>", desc = "go to third buffer" },
      { "<leader>b4", "<CMD>BufferLineGoToBuffer 4<CR>", desc = "go to fourth buffer" },
      { "<leader>bs", "<CMD>BufferLineSortByTabs<CR>", desc = "sort buffer by tabs" },
      { "<leader>bl", "<CMD>BufferLineCloseRight<CR>", desc = "close all buffer to the right" },
      { "<leader>bh", "<CMD>BufferLineCloseLeft<CR>", desc = "close all buffer to the left" },
    },
  },
  {
    "folke/zen-mode.nvim",
    enabled = true,
    event = "VeryLazy",
    keys = { { "<leader>zz", "<CMD>ZenMode<CR>", desc = "Toggle zen mode" } },
    opts = {
      window = {
        width = 100,
        options = {
          signcolumn = "no",
          number = true,
          relativenumber = false,
          cursorline = true,
          cursorcolumn = false,
          foldcolumn = "0",
          list = false,
        },
      },
      plugins = {
        options = {
          enabled = true,
          laststatus = 0, -- turn off the statusline in zen mode (on = 3)
        },
        gitsigns = { enabled = false },
        tmux = { enabled = true },
        transparent = { enabled = true },
      },
    },
  },
  {
    "folke/twilight.nvim",
    enabled = false,
    -- event = "VeryLazy",
    keys = { { "<leader>zx", "<CMD>Twilight<CR>", desc = "Toggle twilight mode" } },
    opts = {
      context = 20,
      dimming = {
        alpha = 0.5, -- amount of dimming
        color = { "Normal", "#ffffff" },
        inactive = false, -- when true, other windows will be fully dimmed (unless they contain the same buffer)
      },
      -- for treesitter, we we always try to expand to the top-most ancestor with these types
      treesitter = true,
      expand = { "function" },
    },
  },
  {
    "nvim-pack/nvim-spectre",
    enabled = true,
    event = "VeryLazy",
    keys = {
      {
        "<leader>sr",
        "<cmd>lua require('spectre').toggle()<CR>",
        desc = "Spectre toggle",
      },
      {
        "<leader>ss",
        "<esc><cmd>lua require('spectre').open_visual()<CR>",
        desc = "Spectre search selected word",
        mode = { "v" },
      },
      {
        "<leader>ss",
        "<CMD>lua require('spectre').open_visual({select_word=true})<CR>",
        desc = "Spectre search current word",
      },
      {
        "<leader>sf",
        "<cmd>lua require('spectre').open_file_search({select_word=true})<CR>",
        desc = "Spectre search on current file",
      },
    },
  },
}
