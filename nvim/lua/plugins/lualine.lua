return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  opts = function(_, opts)
    table.insert(opts, { theme = "catppuccin" })
  end,
}
