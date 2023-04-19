return {
  -- naviagter with nvim and tmux better
  { "christoomey/vim-tmux-navigator", enabled = true },
  {
    "uga-rosa/ccc.nvim",
    enabled = true,
    keys = {
      { "<leader>cc", "<CMD>CccHighlighterToggle<CR>", desc = "toggle display color preview css" },
      { "<leader>cp", "<CMD>CccPick<CR>", desc = "color picker css" },
    },
  },

  -- pop up an block to display message
  { "rcarriga/nvim-notify", enabled = false },
  { "folke/noice.nvim", enabled = false },
  { "SmiteshP/nvim-navic", enabled = false },
  {
    "xiyaowong/transparent.nvim",
    enabled = true,
    keys = {
      { "<leader>ut", "<CMD>TransparentToggle<CR>", desc = "toggle Transparent bg" },
    },
  },

  -- motion in vim
  { "ggandor/flit.nvim", enabled = false },
  { "ggandor/leap.nvim", enabled = false },

  { "echasnovski/mini.indentscope", enabled = true },
  -- better focus remove all unused out of my side
  {
    "folke/zen-mode.nvim",
    enabled = true,
    event = "VeryLazy",
    keys = { { "<leader>z", "<CMD>ZenMode<CR>", desc = "toggle zen mode" } },
    opts = {
      window = {
        options = {
          signcolumn = "no",
          number = true,
          relativenumber = true,
          cursorline = true,
          cursorcolumn = false,
          foldcolumn = "0",
          list = false,
        },
      },
      plugins = {
        gitsigns = { enabled = false },
        tmux = { enabled = true },
      },
    },
  },
}
