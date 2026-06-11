return {
	settings = {
		css = {
			validate = true,
			lint = {
				-- This ignores warnings for Tailwind directives
				unknownAtRules = "ignore",
			},
		},
	},
}
