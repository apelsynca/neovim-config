return {
	on_attach = function(client, bufnr)
		-- Disable formatting for vtsls, let Biome handle it
		client.server_capabilities.documentFormattingProvider = false
		client.server_capabilities.documentRangeFormattingProvider = false
	end,
}
