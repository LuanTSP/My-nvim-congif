local status, modicator = pcall(require, "modicator")
if not status then
  return
end

vim.o.termguicolors = true
vim.o.cursorline = true
vim.o.number = true

modicator.setup()
