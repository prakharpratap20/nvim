--- Startup times for process: Primary/TUI ---

times in msec
 clock   self+sourced   self:  sourced script
 clock   elapsed:              other lines

000.000  000.000: --- NVIM STARTING ---
000.096  000.095: event init
000.297  000.201: early init
000.801  000.504: locale set
000.844  000.043: init first window
001.337  000.493: inits 1
001.347  000.009: window checked
001.351  000.004: parsing arguments
001.947  000.045  000.045: require('vim.shared')
002.046  000.049  000.049: require('vim.inspect')
002.102  000.042  000.042: require('vim._options')
002.105  000.153  000.063: require('vim._editor')
002.107  000.268  000.069: require('vim._init_packages')
002.109  000.490: init lua interpreter
002.513  000.404: --- NVIM STARTED ---

--- Startup times for process: Embedded ---

times in msec
 clock   self+sourced   self:  sourced script
 clock   elapsed:              other lines

000.000  000.000: --- NVIM STARTING ---
000.093  000.092: event init
000.252  000.159: early init
000.632  000.381: locale set
000.675  000.043: init first window
001.053  000.377: inits 1
001.071  000.018: window checked
001.075  000.004: parsing arguments
001.652  000.043  000.043: require('vim.shared')
001.740  000.044  000.044: require('vim.inspect')
001.803  000.051  000.051: require('vim._options')
001.805  000.150  000.055: require('vim._editor')
001.806  000.279  000.086: require('vim._init_packages')
001.810  000.456: init lua interpreter
003.880  002.071: expanding arguments
003.892  000.012: inits 2
004.210  000.317: init highlight
004.211  000.001: waiting for UI
004.331  000.120: done waiting for UI
004.334  000.003: clear screen
004.410  000.008  000.008: require('vim.keymap')
005.512  001.175  001.166: require('vim._defaults')
005.514  000.005: init default mappings & autocommands
006.240  000.064  000.064: sourcing /opt/homebrew/Cellar/neovim/0.10.0/share/nvim/runtime/ftplugin.vim
006.358  000.027  000.027: sourcing /opt/homebrew/Cellar/neovim/0.10.0/share/nvim/runtime/indent.vim
007.168  000.358  000.358: require('mysettings.set')
007.787  000.618  000.618: require('mysettings.remap')
008.550  000.598  000.598: require('lazy')
008.580  000.017  000.017: require('ffi')
008.636  000.029  000.029: require('vim.fs')
008.810  000.171  000.171: require('vim.uri')
008.820  000.237  000.037: require('vim.loader')
009.043  000.198  000.198: require('lazy.stats')
009.357  000.276  000.276: require('lazy.core.util')
009.576  000.218  000.218: require('lazy.core.config')
010.108  000.192  000.192: require('lazy.core.handler')
010.560  000.139  000.139: require('lazy.pkg')
010.566  000.316  000.177: require('lazy.core.meta')
010.573  000.463  000.147: require('lazy.core.plugin')
010.580  001.002  000.348: require('lazy.core.loader')
011.223  000.244  000.244: require('lazy.core.fragments')
011.715  000.126  000.126: require('mysettings.lazy.autoclose')
011.832  000.107  000.107: require('mysettings.lazy.autotag')
011.919  000.079  000.079: require('mysettings.lazy.colors')
012.011  000.084  000.084: require('mysettings.lazy.conform')
012.140  000.120  000.120: require('mysettings.lazy.gitsigns')
012.263  000.115  000.115: require('mysettings.lazy.lsp')
012.341  000.059  000.059: require('mysettings.lazy.lualine')
012.416  000.064  000.064: require('mysettings.lazy.telescope')
012.500  000.075  000.075: require('mysettings.lazy.treesitter')
013.078  000.096  000.096: require('lazy.core.handler.cmd')
013.262  000.181  000.181: require('lazy.core.handler.keys')
013.459  000.100  000.100: require('lazy.core.handler.event')
013.462  000.197  000.098: require('lazy.core.handler.ft')
014.033  000.290  000.290: sourcing /opt/homebrew/Cellar/neovim/0.10.0/share/nvim/runtime/filetype.lua
015.445  000.164  000.164: require('nvim-treesitter.utils')
016.922  000.108  000.108: require('vim.treesitter.language')
016.999  000.075  000.075: require('vim.func')
017.115  000.112  000.112: require('vim.func._memoize')
017.154  000.826  000.530: require('vim.treesitter.query')
017.309  000.154  000.154: require('vim.treesitter._range')
017.319  001.189  000.209: require('vim.treesitter.languagetree')
017.331  001.500  000.311: require('vim.treesitter')
018.437  002.990  001.491: require('nvim-treesitter.parsers')
018.840  000.121  000.121: require('nvim-treesitter.compat')
019.129  000.154  000.154: require('nvim-treesitter.ts_utils')
019.133  000.291  000.136: require('nvim-treesitter.tsrange')
019.248  000.113  000.113: require('nvim-treesitter.caching')
019.255  000.621  000.095: require('nvim-treesitter.query')
019.270  000.745  000.125: require('nvim-treesitter.configs')
019.273  000.834  000.089: require('nvim-treesitter.info')
019.386  000.112  000.112: require('nvim-treesitter.shell_command_selectors')
019.445  004.315  000.215: require('nvim-treesitter.install')
019.523  000.076  000.076: require('nvim-treesitter.statusline')
019.603  000.079  000.079: require('nvim-treesitter.query_predicates')
019.605  005.257  000.787: require('nvim-treesitter')
020.203  006.004  000.748: sourcing /Users/prakharpratap/.local/share/nvim/lazy/nvim-treesitter/plugin/nvim-treesitter.lua
021.322  000.097  000.097: require('nvim-treesitter.highlight')
021.433  000.091  000.091: require('nvim-treesitter.indent')
022.312  000.158  000.158: require('rose-pine.config')
022.316  000.844  000.686: require('rose-pine')
023.546  000.157  000.157: require('rose-pine.utilities')
023.641  000.093  000.093: require('rose-pine.palette')
024.864  001.628  001.378: sourcing /Users/prakharpratap/.local/share/nvim/lazy/rose-pine/colors/rose-pine-moon.lua
025.198  000.026  000.026: sourcing /Users/prakharpratap/.local/share/nvim/lazy/nvim-web-devicons/plugin/nvim-web-devicons.vim
026.322  000.275  000.275: require('lualine_require')
026.616  001.386  001.110: require('lualine')
028.657  000.099  000.099: require('lualine.utils.mode')
032.822  000.026  000.026: sourcing /Users/prakharpratap/.local/share/nvim/lazy/plenary.nvim/plugin/plenary.vim
033.061  000.141  000.141: sourcing /Users/prakharpratap/.local/share/nvim/lazy/telescope.nvim/plugin/telescope.lua
033.422  000.094  000.094: require('telescope._extensions')
033.425  000.350  000.256: require('telescope')
033.858  000.115  000.115: require('plenary.bit')
033.958  000.098  000.098: require('plenary.functional')
033.987  000.357  000.144: require('plenary.path')
033.999  000.468  000.111: require('plenary.strings')
034.080  000.080  000.080: require('telescope.deprecated')
034.351  000.004  000.004: require('vim.F')
034.369  000.118  000.114: require('plenary.log')
034.383  000.206  000.087: require('telescope.log')
034.798  000.074  000.074: require('plenary.compat')
034.805  000.244  000.170: require('plenary.job')
034.878  000.072  000.072: require('telescope.state')
034.884  000.500  000.184: require('telescope.utils')
034.889  000.807  000.102: require('telescope.sorters')
036.296  002.870  001.514: require('telescope.config')
037.385  000.284  000.284: require('telescope.builtin')
037.720  000.079  000.079: sourcing /opt/homebrew/Cellar/neovim/0.10.0/share/nvim/runtime/plugin/editorconfig.lua
037.909  000.122  000.122: sourcing /opt/homebrew/Cellar/neovim/0.10.0/share/nvim/runtime/plugin/gzip.vim
038.047  000.071  000.071: sourcing /opt/homebrew/Cellar/neovim/0.10.0/share/nvim/runtime/plugin/man.lua
038.982  000.181  000.181: sourcing /opt/homebrew/Cellar/neovim/0.10.0/share/nvim/runtime/pack/dist/opt/matchit/plugin/matchit.vim
038.996  000.860  000.679: sourcing /opt/homebrew/Cellar/neovim/0.10.0/share/nvim/runtime/plugin/matchit.vim
039.252  000.125  000.125: sourcing /opt/homebrew/Cellar/neovim/0.10.0/share/nvim/runtime/plugin/matchparen.vim
039.606  000.236  000.236: sourcing /opt/homebrew/Cellar/neovim/0.10.0/share/nvim/runtime/plugin/netrwPlugin.vim
039.812  000.070  000.070: sourcing /opt/homebrew/Cellar/neovim/0.10.0/share/nvim/runtime/plugin/osc52.lua
040.067  000.134  000.134: sourcing /opt/homebrew/Cellar/neovim/0.10.0/share/nvim/runtime/plugin/rplugin.vim
040.202  000.050  000.050: sourcing /opt/homebrew/Cellar/neovim/0.10.0/share/nvim/runtime/plugin/shada.vim
040.297  000.015  000.015: sourcing /opt/homebrew/Cellar/neovim/0.10.0/share/nvim/runtime/plugin/spellfile.vim
040.434  000.065  000.065: sourcing /opt/homebrew/Cellar/neovim/0.10.0/share/nvim/runtime/plugin/tarPlugin.vim
040.590  000.069  000.069: sourcing /opt/homebrew/Cellar/neovim/0.10.0/share/nvim/runtime/plugin/tohtml.lua
040.692  000.014  000.014: sourcing /opt/homebrew/Cellar/neovim/0.10.0/share/nvim/runtime/plugin/tutor.vim
040.865  000.094  000.094: sourcing /opt/homebrew/Cellar/neovim/0.10.0/share/nvim/runtime/plugin/zipPlugin.vim
040.924  033.135  012.904: require('mysettings.lazy_init')
040.942  034.373  000.263: require('mysettings')
040.944  034.405  000.032: sourcing /Users/prakharpratap/.config/nvim/init.lua
040.951  000.940: sourcing vimrc file(s)
041.268  000.047  000.047: sourcing /opt/homebrew/Cellar/neovim/0.10.0/share/nvim/runtime/filetype.lua
041.608  000.068  000.068: sourcing /opt/homebrew/Cellar/neovim/0.10.0/share/nvim/runtime/syntax/synload.vim
041.666  000.247  000.179: sourcing /opt/homebrew/Cellar/neovim/0.10.0/share/nvim/runtime/syntax/syntax.vim
041.674  000.429: inits 3
044.467  002.793: reading ShaDa
044.534  000.067: opening buffers
045.314  000.780: BufEnter autocommands
045.317  000.003: editing files in windows
051.024  005.473  005.473: sourcing /opt/homebrew/Cellar/neovim/0.10.0/share/nvim/runtime/autoload/netrw.vim
051.444  000.140  000.140: sourcing /opt/homebrew/Cellar/neovim/0.10.0/share/nvim/runtime/autoload/provider/clipboard.vim
051.821  000.020  000.020: sourcing /Users/prakharpratap/.local/share/nvim/.netrwhist
055.031  001.999  001.999: require('vim.filetype')
056.071  000.238  000.238: require('vim.filetype.detect')
060.295  000.258  000.258: sourcing /opt/homebrew/Cellar/neovim/0.10.0/share/nvim/runtime/syntax/netrw.vim
063.154  000.221  000.221: sourcing /opt/homebrew/Cellar/neovim/0.10.0/share/nvim/runtime/syntax/netrw.vim
068.825  000.219  000.219: sourcing /opt/homebrew/Cellar/neovim/0.10.0/share/nvim/runtime/syntax/netrw.vim
080.637  026.752: VimEnter autocommands
080.686  000.049: UIEnter autocommands
080.690  000.003: before starting main loop
081.115  000.425: first screen update
081.117  000.002: --- NVIM STARTED ---

