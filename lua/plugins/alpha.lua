return {
    'goolord/alpha-nvim',
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },

    config = function()
        local alpha = require 'alpha'
        local dashboard = require 'alpha.themes.startify'

        dashboard.section.header.val = {
            [[                                                            ]],
	        [[ 888b    888                  888     888 d8b               ]],
	        [[ 8888b   888                  888     888 Y8P               ]],
	        [[ 88888b  888                  888     888                   ]],
	        [[ 888Y88b 888  .d88b.   .d88b. Y88b   d88P 888 88888b.d88b.  ]],
	        [[ 888 Y88b888 d8P  Y8b d88""88b Y88b d88P  888 888 "888 "88b ]],
	        [[ 888  Y88888 88888888 888  888  Y88o88P   888 888  888  888 ]],
	        [[ 888   Y8888 Y8b.     Y88..88P   Y888P    888 888  888  888 ]],
	        [[ 888    Y888  "Y8888   "Y88P"     Y8P     888 888  888  888 ]],
	        [[                                                            ]],
          }
          alpha.setup(dashboard.opts)
    end,  
}