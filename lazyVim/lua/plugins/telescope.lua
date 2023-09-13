return {
  {
    "nvim-telescope/telescope.nvim",
    cmd = "Telescope",
    version = false, -- telescope did only one release, so use HEAD for now
    opts = {
      defaults = {
        layout_strategy = "horizontal",
        layout_config = { prompt_position = "top" },
        sorting_strategy = "ascending",
        winblend = 0,
        mappings = {
          i = {
            ["<M-j>"] = "move_selection_next",
            ["<M-k>"] = "move_selection_previous",
            ["<esc>"] = "close",
          },
        },
      },
    },
    keys = {
      -- remove deault config of telescope
      { "<leader><space>", false },
      { "<leader>sh", false },
      { "<leader>sH", false },
      { "<leader>sk", false },
      { "<leader>sT", false },
      { "<leader>so", false },
      { "<leader>sM", false },
      { "<leader>sa", false },
      { "<leader>ss", false },
      { "<leader>sS", false },
      { "<leader>sC", false },
      { "<leader>sR", false },
      { "<leader>sd", false },
      { "<leader>sD", false },
      { "<leader>sg", false },
      { "<leader>sG", false },
      { "<leader>ft", false },
      { "<leader>fT", false },
      { "<leader>ff", false },
      { "<leader>fn", false },
      { "<leader>gc", false },
      { "<leader>gs", false },

      -- create my own config
      { "<C-p>", "<CMD>Telescope find_files<CR>", desc = "Find Files (root dir)" },
      { "<leader>ft", "<CMD>TodoTelescope<cr>", desc = "Open todo list by telescope" },
      { "<leader>fr", "<CMD>Telescope resume<cr>", desc = "resume privious search result" },
    },
  },
}
