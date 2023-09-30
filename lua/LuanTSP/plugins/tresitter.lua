local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
  return
end


treesitter.setup({
  ensure_installed = {
    "c",
    "lua",
    "vim",
    "vimdoc",
    "javascript",
    "html",
    "python",
    "tsx",
    "css",
    "typescript",
    "markdown",
    "bash",
    "gitignore",
    "json",
  },
  auto_install = true,
  sync_install = false,
  highlight = { enable = true },
  indent = { enable = true },
  autotag = { enable = true },
})
