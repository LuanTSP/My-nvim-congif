local dash_status, dash = pcall(require, "dashboard")
if not dash_status then
  return
end

vim.g.dashboard_preview_command="cat"
vim.g.dashboard_preview_file="teste.txt"
vim.g.dashboard_preview_pipeline="lolcat -F 0.2"
vim.g.dashboard_preview_file_width=70
vim.g.dashboard_preview_file_height=10

 dash.setup({
  theme = 'doom',
  config = {
    center = {
      {
        icon = ' 󰈔 ',
        icon_hl = 'Title',
        desc = 'Find File',
        desc_hl = 'String',
        key = 'f',
        keymap = 'SPC f f',
        key_hl = 'Number',
        action = 'lua print(2)'
      },
      {
        icon = ' 󱁹 ',
        desc = 'Find Dotfiles',
        key = 'd',
        keymap = 'SPC f d',
        action = 'lua print(3)'
      },
      {
        icon = '  ',
        desc = 'Find Buffers',
        key = 'b',
        keymap = 'SPC f b',
        action = 'lua print(4)'
      },
      {
        icon = '  ',
        desc = 'Live Grep',
        key = 'g',
        keymap = 'SPC f g',
        action = 'lua print(5)'
      },
    },
  }
})


