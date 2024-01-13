return {
  "folke/which-key.nvim",
  opts = function()
    require("which-key").register({ ["<leader>a"] = { name = "+Gen" } })
  end,
}
