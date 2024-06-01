vim.keymap.set("n", "<leader>s", ":w<CR>")

-- git
vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
vim.keymap.set("n", "<leader>gp", ":G<space>push<CR>")
vim.keymap.set("n", "<leader>gn", "<cmd>diffget //3<CR>")
vim.keymap.set("n", "<leader>gt", "<cmd>diffget //2<CR>")

--prime bindings
vim.keymap.set("v", "N", ":m '>+1<CR>gv")
vim.keymap.set("v", "E", ":m '<-2<CR>gv")

vim.keymap.set("n", "N", "mzJ`z")
vim.keymap.set("n", "<leader>w", "<C-w>v")
vim.keymap.set("n", "<leader>q", ":q<Enter>")
vim.keymap.set("n", "<leader>Q", ":q!<Enter>")
vim.keymap.set("n", "j",  "nzzzv")
vim.keymap.set("n", "J", "Nzzzv")

-- greatest remap ever
vim.keymap.set("v", "<leader>p", [["_dP]])
vim.keymap.set("n", "<leader>p", [["_diwP]])
vim.keymap.set("n", "<leader><leader>p", [["+p]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"v", "n"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"v", "n"}, "<leader>d", [["_d]])
vim.keymap.set("n", "<leader>D", [["_D]])

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<leader><leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>ll", "/[\\]})\"'>]<CR>")
vim.keymap.set("n", "<leader>LL", "?[\\[{(\"'<]<CR>")
vim.keymap.set("n", "<leader>lg", "/)<CR>")
vim.keymap.set("n", "<leader>Lg", "?(<CR>")
vim.keymap.set("n", "<leader>lt", "/}<CR>")
vim.keymap.set("n", "<leader>Lt", "?{<CR>")
vim.keymap.set("n", "<leader>ls", "/]<CR>")
vim.keymap.set("n", "<leader>Ls", "?[<CR>")
vim.keymap.set("n", "<leader>l,", "/><CR>")
vim.keymap.set("n", "<leader>L,", "?<<CR>")

--split
vim.keymap.set("n", "<leader>h", "<C-w>h")
vim.keymap.set("n", "<leader>n", "<C-w>j")
vim.keymap.set("n", "<leader>e", "<C-w>k")
vim.keymap.set("n", "<leader>i", "<C-w>l")

--colemak binding
vim.keymap.set({"n", "v", "o"}, "n", "j")
vim.keymap.set({"n", "v", "o"}, "e", "k")
vim.keymap.set({"n", "v", "o"}, "i", "l")
vim.keymap.set({"n", "v", "o"}, "l", "i")
vim.keymap.set({"n", "v", "o"}, "k", "e")

vim.keymap.set("n", "I", "L")
vim.keymap.set("n", "L", "I")
