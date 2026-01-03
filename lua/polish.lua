-- This will run last in the setup process.
-- This is just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

-- Performance optimization: skip deprecated treesitter context commentstring module
vim.g.skip_ts_context_commentstring_module = true
