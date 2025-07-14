return {
   'akinsho/bufferline.nvim',
   version = "*", 
   dependencies = {
       'moll/vim-bbye',
       'nvim-tree/nvim-web-devicons'
   },
   config = function()
       require("bufferline").setup{
           options = {
               mode = 'buffers',
               themable = true,
               numbers = 'none',
               close_command = 'Bdelete! %d',
               buffer_close_icon= 'X',
               tab_size = 21,
               color_icons = true,
               max_name_length = 30,
               show_buffer_icons = true
           }
       }
   end,
}
