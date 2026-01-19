--------------------------------
--------- Key Binds ------------
--------------------------------
return {
    vim.keymap.set("n", "\\", function() -- '\' toggles a floating oil window in the parent dir
	require('oil').toggle_float()
    end, { desc = 'Open parent directory in floating Oil window'}),
}
