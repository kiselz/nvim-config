function reload_config()
    -- local glob = vim.fn.stdpath('config') .. '/lua/aleksandr/*.lua'
    -- local modules_filepath = vim.fn.glob(glob, true, true)

	for name, _ in pairs(package.loaded) do
		if string.find(name, "aleksandr") ~= nil and string.find(name, "lazy") == nil then
			package.loaded[name] = nil
			require(name)
			vim.notify("reloaded " ..  name, vim.log.levels.INFO)
		end
	end
end


-- vim.keymap.set("n", "<leader>sv", reload_config)
