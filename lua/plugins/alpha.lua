return {
    'goolord/alpha-nvim',
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },

    config = function()
        local alpha = require 'alpha'
        local dashboard = require 'alpha.themes.startify'

        dashboard.section.header.val = {       
          [[   .d8888b.   .d88888b.  888    888        d8888 888b     d888 ]],
          [[  d88P  Y88b d88P" "Y88b 888    888       d88888 8888b   d8888 ]],
          [[  Y88b.      888     888 888    888      d88P888 88888b.d88888 ]],
          [[   "Y888b.   888     888 8888888888     d88P 888 888Y88888P888 ]],
          [[      "Y88b. 888     888 888    888    d88P  888 888 Y888P 888 ]],
          [[        "888 888     888 888    888   d88P   888 888  Y8P  888 ]],
          [[  Y88b  d88P Y88b. .d88P 888    888  d8888888888 888   "   888 ]],
          [[   "Y8888P"   "Y88888P"  888    888 d88P     888 888       888 ]],
        }
          alpha.setup(dashboard.opts)
    end,  
}