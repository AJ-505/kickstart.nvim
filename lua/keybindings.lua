local map = vim.keymap.set
map({ 'v', 'x' }, 'J', ':m +1<CR>gv', { desc = 'Move selection down 1 line', silent = true })
map({ 'v', 'x' }, 'K', ':m -2<CR>gv', { desc = 'Move selection up 1 line', silent = true })
map('n', '<leader>mp', '<cmd>MarkdownPreviewToggle<cr>', { desc = 'Preview Markdown' })
map('n', '<Esc><Esc>', ':close<cr>', { silent = true })
