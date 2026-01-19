return {
    "zaldih/themery.nvim",
    lazy = false,
    config = function()
        require("themery").setup({
            -- must install in colors.lua before adding to themes list
            themes = {
                -- 'kanagawa-lotus', -- BEWARE: light theme
                'kanagawa-dragon',
                'kanagawa-wave',
                'tokyonight-moon',
                'tokyonight-night',
                'rose-pine',
                'omni',
                'moonfly',
                'nightfly',
                'nordic',
                'evergarden',
                'gruvbox',
            },
            livePreview = true,
            -- globalAfter = [[ vim.api.nvim_set_hl(0, "Normal", { bg = "none" }) ]],
        })
    end
}
