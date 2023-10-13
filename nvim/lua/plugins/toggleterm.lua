return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = {
      size = 15,
      hide_numbers = true,
      shade_terminals = true,
      shading_factor = "-30",
      start_in_insert = true,
      persist_size = true,
      persist_mode = true,
      direction = "horizontal",
      close_on_exit = true,
      auto_scroll = true,
    },
    keys = {
      { "<leader>th", [[<cmd>1ToggleTerm<CR>]], desc = "Open/Close terminal 1", mode = { "n", "t" }, buffer = 0 },
      { "<leader>tn", [[<cmd>2ToggleTerm<CR>]], desc = "Open/Close terminal 2", mode = { "n", "t" }, buffer = 0 },
      { "jk", [[<C-\><C-n>]], desc = "Quick exit terminal mode", mode = { "t" }, buffer = 0 },
      { "<C-h>", [[<cmd>wincmd h<cr>]], desc = "Move to left window", mode = { "t" }, buffer = 0 },
      { "<C-j>", "<cmd>wincmd j<cr>", desc = "Move to below window", mode = { "t" }, buffer = 0 },
      { "<C-k>", "<cmd>wincmd k<cr>", desc = "Move to upper window", mode = { "t" }, buffer = 0 },
      { "<C-l>", "<cmd>wincmd l<cr>", desc = "Move to right window", mode = { "t" }, buffer = 0 },
    },
  },
  {
    "folke/which-key.nvim",
    opts = {
      defaults = {
        ["<leader>t"] = { name = "+test/terminal" },
      },
    },
  },
}
