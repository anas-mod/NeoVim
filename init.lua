
-- Leader key 
vim.g.mapleader = " "

-- vim.cmd.colorscheme("habamax")
-- vim.cmd.colorscheme("retrobox")
vim.cmd.colorscheme("greyscale")
-- vim.cmd.colorscheme("eclipse")

local opt = vim.opt

opt.number = true 		    -- line numbers
opt.relativenumber = true	-- relative numbers, great for motions like 5j

opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true        -- spaces instead of tabs
opt.smartindent = true

opt.wrap = false
opt.ignorecase = true
opt.smartcase = true        -- case-sensitive only if you type a capital

opt.termguicolors = true    -- proper colors in terminal
opt.scrolloff = 8           -- keep 8 lines visible above/below cursor
opt.signcolumn = "yes"      -- reserve space for LSP diagnostics/signs

opt.undofile = true         -- persistent undo across sessions
opt.swapfile = false

opt.splitright = true
optsplitbelow = true



-- Keymaps
local map = vim.keymap.set

map("n", "<leader>w", ":w<CR>", { desc = "Save file" })
map("n", "<leader>q", ":q<CR>", { desc = "Quit" })
map("n", "<Esc>", ":nohlsearch<CR>", { desc = "Clear search highlight" })

map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")



-- LSP server configs
vim.lsp.config('clangd', {
    cmd = { 'clangd' },
    filetypes = { 'c', 'cpp' },
    root_markers = { '.git', 'complie_commands.json' }
})

vim.lsp.config('pyright', {
    cmd = { 'pyright-langserver', '--stdio' },
    filetypes = { 'python' },
    root_markers = { '.git', 'pyproject.toml', 'setup.py' }
})

vim.lsp.config('biome', {
    cmd = { 'biome', 'lsp-proxy' },
    filetypes = { 'javascript', 'typescript', 'css', 'json' },
    root_markers = { '.git', 'package.json', 'biome.json' }
})

vim.lsp.enable({ 'clangd', 'pyright', 'biome'})

-- LSP keymaps (only active in buffers with an attached LSP)
vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(args)
        local opts = { buffer = args.buf }
        map("n", "gd", vim.lsp.buf.definition, opts)
        map("n", "K", vim.lsp.buf.hover, opts)
        map("n", "<leader>rn", vim.lsp.buf.rename, opts)
        map("n", "<leader>ca", vim.lsp.buf.code_action, opts)
        map("n", "gr", vim.lsp.buf.references, opts)
        map("n", "[d", vim.diagnostic.goto_prev, opts)
        map("n", "]d", vim.diagnostic.goto_next, opts)
    end,
})
