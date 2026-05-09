return {
	init_options = {
		settings = {
			lint = {
				enabled = true, -- use basedpyright for linting, ruff for formatting
			},
			python = {
				analysis = {
					-- Ignore all files for analysis to exclusively use Ruff for linting
					ignore = { "*" },
				},
			},
		},
	},
}
