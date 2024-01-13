-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
local function augroup(name)
  return vim.api.nvim_create_augroup("lazyvim_" .. name, { clear = true })
end

vim.api.nvim_create_autocmd("BufEnter", {
  pattern = "*.txt",
  command = "if &buftype == 'help' | wincmd L | endif",
  group = augroup("vertHelp"),
})

vim.api.nvim_create_augroup("extraft", { clear = true })
vim.api.nvim_create_autocmd({ "BufEnter", "BufRead" }, {
  pattern = "*.astro",
  callback = function()
    vim.bo.filetype = "astro"
  end,
  group = "extraft",
})
vim.api.nvim_create_autocmd({ "BufEnter", "BufRead" }, {
  pattern = "*.geojson",
  callback = function()
    vim.bo.filetype = "json"
  end,
  group = "extraft",
})
vim.api.nvim_create_autocmd({ "BufEnter", "BufRead" }, {
  pattern = "*.wgsl",
  callback = function()
    vim.bo.filetype = "wgsl"
  end,
  group = "extraft",
})

vim.api.nvim_create_augroup("cursorLine", { clear = true })
vim.api.nvim_create_autocmd({ "VimEnter", "WinEnter", "BufWinEnter" }, {
  callback = function()
    vim.schedule(function()
      if vim.bo.filetype == "TelescopePrompt" then
        vim.opt_local.cursorline = false
      else
        vim.opt_local.cursorline = true
      end
    end)
  end,
  group = "cursorLine",
})
vim.api.nvim_create_autocmd("WinLeave", {
  callback = function()
    vim.opt_local.cursorline = false
  end,
  group = "cursorLine",
})
