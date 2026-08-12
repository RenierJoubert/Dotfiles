local utils = require 'utils'

vim.deprecate = function() end

require 'options'
local km = require 'keymaps'
require 'custom_filetypes'
require 'lazynvim'
km.after_lazy_keymaps()
require 'cool_stuff'
require 'mappings'
require 'autocmds'

utils.color_overrides.setup_colorscheme_overrides()

vim.cmd.colorscheme 'base16-black-metal-gorgoroth'

utils.fix_telescope_parens_win()
