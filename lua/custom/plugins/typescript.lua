-- TypeScript/JavaScript support via the native tsserver protocol.
--
-- typescript-tools.nvim drives tsserver directly and replaces LSP clients such
-- as ts_ls/vtsls for plain .ts/.tsx/.js/.jsx buffers. Vue is deliberately kept
-- out of its filetypes: the plugin cannot forward `tsserver/request`, so .vue
-- is owned by `ts_ls` (scoped to vue in init.lua) plus `vue_ls`.
return {
  {
    'pmizio/typescript-tools.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    lazy = false,
    opts = {
      settings = {
        -- One tsserver instance, not two (the plugin default is true).
        separate_diagnostic_server = false,
        tsserver_locale = 'en',
        tsserver_max_memory = 'auto',
        code_lens = 'off',
        disable_member_code_lens = true,
        -- nvim-ts-autotag already handles JSX closing tags.
        jsx_close_tag = { enable = false, filetypes = { 'javascriptreact', 'typescriptreact' } },
        tsserver_file_preferences = {
          -- Without this <leader>th has nothing to show (plugin default is 'none').
          includeInlayParameterNameHints = 'all',
          includeCompletionsForModuleExports = true,
        },
      },
    },
  },
}
