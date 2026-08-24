-- local util = require("lspconfig.util")

return {
  -- on_new_config = function(new_config, new_root_dir)
  --   local is_windows = vim.fn.has("win32") == 1
  --   local bin_dir = is_windows and "Scripts" or "bin"
  --   local python_exe = is_windows and "python.exe" or "python"
  --
  --   local venvs = { ".venv", "venv", "env", ".env" }
  --   local python_path = nil
  --
  --   -- Scan for local venv directories
  --   for _, venv in ipairs(venvs) do
  --     local path = util.path.join(new_root_dir, venv, bin_dir, python_exe)
  --     if vim.fn.executable(path) == 1 then
  --       python_path = path
  --       break
  --     end
  --   end
  --
  --   -- Fallback to active shell virtual environment
  --   if not python_path and vim.env.VIRTUAL_ENV then
  --     python_path = util.path.join(vim.env.VIRTUAL_ENV, bin_dir, python_exe)
  --   end
  --
  --   -- Inject the path into Pyright's settings
  --   if python_path then
  --     new_config.settings.python.pythonPath = python_path
  --   end
  -- end,

  settings = {
    pyright = {
      disableOrganizeImports = true,
    },
    python = {
      analysis = {
        -- Ignore all files for analysis to exclusively use Ruff for linting
        ignore = { "*" },
      },
    },
  },
  capabilities = {
    workspace = {
      didChangeWatchedFiles = {
        dynamicRegistration = true,
      },
    },
  },
}
