-- vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
-- local fugitive = vim.api.nvim_create_augroup("fugitive", {})
--
-- local autocmd = vim.api.nvim_create_autocmd
--
-- autocmd("BufWinEnter", {
--     group = fugitive,
--     pattern = "*",
--     callback = function()
--         if vim.bo.ft ~= "fugitive" then
--             return
--         end
--
--         local bufnr = vim.api.nvim_get_current_buf()
--         local opts = {buffer = bufnr, remap = false}
--         vim.keymap.set("n", "<leader>p", function()
--             vim.cmd.Git('push')
--         end, opts)
--
--         -- rebase always
--         vim.keymap.set("n", "<leader>P", function()
--             vim.cmd.Git({'pull',  '--rebase'})
--         end, opts)
--
--         -- NOTE: It allows me to easily set the branch i am pushing and any tracking
--         -- needed if i did not set the branch up correctly
--         vim.keymap.set("n", "<leader>t", ":Git push -u origin ", opts);
--     end,
-- })
local keymap = vim.keymap




keymap.set("n", "<leader>gs", "<cmd>Git<cr>", { desc = "Git status" })
keymap.set("n", "<leader>ga", "<cmd>Gwrite<cr>", { desc = "Git add" })
keymap.set("n", "<leader>gc", "<cmd>Git commit<cr>", { desc = "Git commit" })
keymap.set("n", "<leader>gd", "<cmd>Gdiffsplit<cr>", { desc = "Git diff" })
keymap.set("n", "<leader>gpl", "<cmd>Git pull<cr>", { desc = "Git pull" })
keymap.set("n", "<leader>gpu", "<cmd>15 split|term git push<cr>", { desc = "Git push" })

-- convert git to Git in command line mode
-- vim.fn['utils#Cabbrev']('git', 'Git')
