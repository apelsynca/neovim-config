require("vim._core.ui2").enable({
	msg = {
		timeout = 1250, -- keep messages on screen for 1.25s
	},
})

require("apelsynca.options")
require("apelsynca.core")

require("apelsynca.keymaps") -- mappings
require("apelsynca.pack") -- plugins to install
require("apelsynca.pack-select") -- plugins to enable configure
require("apelsynca.lsp") -- tells what lsps to enable
require("apelsynca.autocmds")
