return {
  "nvim-treesitter",
  opts = function(_, opts)
    vim.list_extend(opts.ensure_installed, {
      "astro",
      "elixir",
      "eex",
      "heex",
      "svelte",
      "glsl",
    })
  end,
}
