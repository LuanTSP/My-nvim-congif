-- ondedark colorscheme
local onedark_status, onedark = pcall(require, "onedark")
if not onedark_status then
  return
end
onedark.setup({
  style = "deep"
})
onedark.load()

-- nightfox colorscheme
local nightfox_status, nightfox = pcall(require, "nightfox")
if not nightfox_status then
  return
end
nightfox.setup()


-- DEFAULT colorscheme
vim.opt.background = 'dark'

 vim.cmd("colorscheme carbonfox")
-- vim.cmd("colorscheme nightfly")
-- vim.cmd("colorscheme onedark")
-- vim.cmd("colorscheme oxocarbon")
