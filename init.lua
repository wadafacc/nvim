require'impatient'.enable_profile()
--options
require 'opts'

--plugins
require 'plugins'

--maps
require 'mappings'

--theme
vim.cmd [[colorscheme onedarkpro]]

vim.cmd([[
  augroup RestoreCursorShapeOnExit
    autocmd!
    autocmd VimLeave * set guicursor=a:ver20
  augroup END
]])
