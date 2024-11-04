return {
  'goolord/alpha-nvim',
  event = 'VimEnter',
  config = function()
    local alpha = require 'alpha'
    local dashboard = require 'alpha.themes.dashboard'

    dashboard.section.header.val = {
      [[                                  __]],
      [[     ___     ___    ___   __  __ /\_\    ___ ___]],
      [[    / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\]],
      [[   /\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \]],
      [[   \ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\]],
      [[    \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/]],
    }

    _Gopts = {
      position = 'center',
      hl = 'Type',
    }

    local builtin = require 'telescope.builtin'
    dashboard.section.buttons.val = {
      dashboard.button('f', '󰥨   Find Files', builtin.find_files),
      dashboard.button('g', '   Grep', builtin.live_grep),
      dashboard.button('r', '󰱼   Recent Files', builtin.oldfiles),
      dashboard.button('l', '󰒲   Lazy', ':Lazy<CR>'),
      dashboard.button('m', '󰢛   Mason', ':Mason<CR>'),
      dashboard.button('h', '󰋠   Check Health', ':checkhealth<CR>'),
      dashboard.button('q', '   Quit NeoVim', ':qa<CR>'),
    }

    local function footer()
      local total_plugins = #require('lazy').plugins()
      local datetime = os.date ' %d-%m-%Y   %H:%M:%S'
      local version = vim.version()
      local nvim_version_info = '   v' .. version.major .. '.' .. version.minor .. '.' .. version.patch

      return datetime .. '   ' .. total_plugins .. ' plugins' .. nvim_version_info
    end

    dashboard.section.footer.val = footer()
    dashboard.opts.opts.noautocmd = true
    alpha.setup(dashboard.opts)

    require('alpha').setup(dashboard.opts)
  end,
}
