vim.opt.termguicolors = true

local status, bufferline = pcall(require, "bufferline")
if not status then
  return
end
bufferline.setup({
  options = {
    buffer_close_icon = '  ',
    close_icon = '  ',
    offsets = {
      filetype = "NvimTree",
      text = "File Explorer",
      text_align = "left",
      separator = true,
    },
    tab_size = 18,
    diagnostics = "nvim_lsp",
    color_icons = true,
    hover = {
      enable = true,
      delay = 200,
      reveal = { 'close' }
    },
  },
})
