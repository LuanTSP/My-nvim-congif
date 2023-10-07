local status, db = pcall(require, "dashboard")
if not status then
  return
end

db.setup({
  theme = 'doom',             --  theme is doom and hyper default is hyper
  disable_move = true,        --  default is false disable move keymap for hyper
  shortcut_type = 'number',   --  shorcut type 'letter' or 'number'
  change_to_vcs_root = false, -- default is false,for open file in hyper mru. it will change to the root of vcs
  config = {
    header = { "LuanTSP" },
    center = {
      {
        icon = '󰈔',
        desc = '  Find Files 󰍉',
        key = 'space ff',
        action = 'Telescope find_files',
      },
      {
        icon = '',
        desc = '  Find Git Files 󰍉',
        key = 'space fg',
        action = 'Telescope git_files',
      },
      {
        icon = '',
        desc = '  Live Grep 󰍉',
        key = 'space fw',
        action = 'Telescope live_grep',
      },
      {
        icon = '󰮫',
        desc = "  Find Buffers 󰍉",
        key = "space fb",
        action = "Telescope buffers",
      },
      {
        icon = '',
        desc = "  Lazy Git 󰍉",
        key = "space  g",
        action = "LazyGit",
      },
      {
        icon = '󰙅',
        desc = "  Open File Tree 󰍉",
        key = "      ee",
        action = "NnnExplorer",
      },
      {
        icon = '',
        desc = "  Change Colorscheme 󰍉",
        key = "space fc",
        action = "Telescope colorscheme",
      },
    },
    footer = { "Better than VSCode..." },
  },                   --  config used for theme
  hide = {
    statusline = true, -- hide statusline default is true
    tabline = true,    -- hide the tabline
    winbar = true,     -- hide winbar
  },
  preview = {
    command = 'cat | lolcat -F 0.3',                                                                        -- preview command
    file_path = '~/.config/nvim/lua/LuanTSP/core/banner.txt ~/.config/nvim/lua/LuanTSP/core/subheader.txt', -- preview file path
    file_height = 10,                                                                                       -- preview file height
    file_width = 70,                                                                                        -- preview file width
  },
})
