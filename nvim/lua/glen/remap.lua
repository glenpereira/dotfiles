local nnoremap = require("glen.keymap").nnoremap

-- Exit vim to netrw
nnoremap("<leader>e", "<cmd>Ex<CR>")

-- ease of life commands
nnoremap("<leader>q", "<cmd>q<CR>")
nnoremap("<leader>wq", "<cmd>wq<CR>")
nnoremap("<leader>w", "<cmd>w<CR>")

-- Increment/ Decrement
nnoremap("+", "<C-a>")
nnoremap("-", "<C-x>")

-- Delete word backwards
nnoremap("dw", 'vb"_d')

-- Select all
nnoremap("<leader>a", "gg<S-v>G")

-- New tab
nnoremap("te", ":tabedit<Return>", { silent = true })

-- Split window
nnoremap("ss", ":split<Return><C-w>w", { silent = true })
nnoremap("sv", ":vsplit<Return><C-w>w", { silent = true })

-- Move windows
nnoremap("<leader>s", "<C-w>w")
nnoremap("<leader>sh", "<C-w>h")
nnoremap("<leader>sk", "<C-w>k")
nnoremap("<leader>sj", "<C-w>j")
nnoremap("<leader>sl", "<C-w>l")

--paste to new line
nnoremap("<leader>p", "o<esc>p")

--open nerdtree
nnoremap("<leader>n", "<cmd>NERDTree<CR>")

--open lazygit
nnoremap("<leader>g", "<cmd>LazyGit<CR>")
