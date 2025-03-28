return {
  'pmizio/typescript-tools.nvim',
  dependencies = { 'nvim-lua/plenary.nvim', 'neovim/nvim-lspconfig' },
  opts = {
    settings = {
      separate_diagnostic_server = true,
      tsserver_max_memory = 8192,
      tsserver_file_preferences = {
        includeCompletionsForModuleExports = true,
      },
    },
  },
}
