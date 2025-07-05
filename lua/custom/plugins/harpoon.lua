return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require 'harpoon'
    
    harpoon:setup()

    vim.keymap.set('n', '<leader>a', function()
      harpoon:list():add()
    end)
    vim.keymap.set('n', '<C-e>', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end)

    vim.keymap.set('n', '<C-z>', function()
      harpoon:list():select(1)
    end)
    vim.keymap.set('n', '<C-x>', function()
      harpoon:list():select(2)
    end)
    vim.keymap.set('n', '<C-c>', function()
      harpoon:list():select(3)
    end)
    vim.keymap.set('n', '<C-v>', function()
      harpoon:list():select(4)
    end)

    -- Toggle previous & next buffers stored within Harpoon list
    vim.keymap.set('n', '<leader>p', function()
      harpoon:list():prev()
    end)
    vim.keymap.set('n', '<leader>n', function()
      harpoon:list():next()
    end)

    -- Clear marks
    vim.keymap.set('n', '<C-hd>', function()
      harpoon:list():clear()
    end)
  end,
}
