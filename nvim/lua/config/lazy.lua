local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
            { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
            { out,                            "WarningMsg" },
            { "\nPress any key to exit..." },
        }, true, {})
        vim.fn.getchar()
        os.exit(1)
    end
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "

require("lazy").setup({
    spec = {
        {
            'nvim-treesitter/nvim-treesitter',
            build = ":TSUpdate",
            config = function()
                local configs = require("nvim-treesitter.config")
                configs.setup({
                    highlight = {
                        enable = true,
                    },
                    indent = { enable = true },
                    autotage = { enable = true },
                    ensure_installed = {
                        "lua",
                        "c",
                    },
                    auto_install = true,
                })
            end
        },
        -- import your plugins
        { import = "plugins" },
    },
    change_detection = { notify = false },
})
