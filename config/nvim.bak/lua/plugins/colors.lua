--- Too Many Themes ---
--- NOTE: trying to find a theme that I like the best, thus the reason for all
--- 	all the themes. Once I figure out what I like the best then I'll trim
--- 	it down to just a few :)

return {
    { "folke/tokyonight.nvim",      lazy = false,       priority = 1000, },
    { "rose-pine/neovim",           name = "rose-pine", lazy = false,    priority = 1000, },
    { "rebelot/kanagawa.nvim",      lazy = false,       priority = 1000, },
    { "getomni/neovim",             lazy = false,       priority = 1000, },
    { "bluz71/vim-nightfly-colors", name = "nightfly",  lazy = false,    priority = 1000 },
    { "bluz71/vim-moonfly-colors",  name = "moonfly",   lazy = false,    priority = 1000 },
    { "AlexvZyl/nordic.nvim",       lazy = false,       priority = 1000, },
    {
        "everviolet/nvim",
        name = "evergarden",
        lazy = false,
        priority = 1000,
        opts = {
            theme = {
                variant = 'fall', -- winter | fall | spring | summer
                accent = 'green'
            }
        }
    },
    { "ellisonleao/gruvbox.nvim", lazy = false, priority = 1000 },
}
